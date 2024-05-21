// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue May 21 11:54:16 2024
// Host        : fasic-beast1.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_configReg_interface_0_0_sim_netlist.v
// Design      : design_1_configReg_interface_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top
   (axi_arready_reg,
    axi_awready_reg,
    axi_wready_reg,
    S_AXI_BVALID,
    aw_en_reg,
    S_AXI_RVALID,
    S_AXI_RDATA,
    S_AXI_ARESETN_0,
    mem_rddout_i,
    \axi_rdata_reg[0] ,
    E,
    S_AXI_ACLK,
    axi_bvalid_reg,
    aw_en_reg_0,
    axi_rvalid_reg,
    \axi_rdata_reg[0]_0 ,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ARESETN,
    Q,
    \reg1_reg[2] ,
    fifo_tail0__18,
    S_AXI_WSTRB,
    \reg1_reg[2]_0 ,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    \axi_rdata[0]_i_2 );
  output axi_arready_reg;
  output axi_awready_reg;
  output axi_wready_reg;
  output S_AXI_BVALID;
  output aw_en_reg;
  output S_AXI_RVALID;
  output [0:0]S_AXI_RDATA;
  output [0:0]S_AXI_ARESETN_0;
  output [0:0]mem_rddout_i;
  input \axi_rdata_reg[0] ;
  input [0:0]E;
  input S_AXI_ACLK;
  input axi_bvalid_reg;
  input aw_en_reg_0;
  input axi_rvalid_reg;
  input \axi_rdata_reg[0]_0 ;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ARESETN;
  input [2:0]Q;
  input \reg1_reg[2] ;
  input fifo_tail0__18;
  input [0:0]S_AXI_WSTRB;
  input \reg1_reg[2]_0 ;
  input [8:0]S_AXI_ARADDR;
  input [8:0]S_AXI_AWADDR;
  input \axi_rdata[0]_i_2 ;

  wire [0:0]E;
  wire [2:0]Q;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RVALID;
  wire [0:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aw_en_reg;
  wire aw_en_reg_0;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_bvalid_reg;
  wire \axi_rdata[0]_i_2 ;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire axi_rvalid_reg;
  wire axi_wready_reg;
  wire fifo_tail0__18;
  wire [0:0]mem_rddout_i;
  wire \reg1_reg[2] ;
  wire \reg1_reg[2]_0 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface axi4_slave_inst
       (.E(E),
        .Q(Q),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .aw_en_reg_0(aw_en_reg),
        .aw_en_reg_1(aw_en_reg_0),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_bvalid_reg_0(axi_bvalid_reg),
        .\axi_rdata[0]_i_2_0 (\axi_rdata[0]_i_2 ),
        .\axi_rdata_reg[0]_0 (\axi_rdata_reg[0] ),
        .\axi_rdata_reg[0]_1 (\axi_rdata_reg[0]_0 ),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wready_reg_0(axi_wready_reg),
        .fifo_tail0__18(fifo_tail0__18),
        .mem_rddout_i(mem_rddout_i),
        .\reg1_reg[2] (\reg1_reg[2] ),
        .\reg1_reg[2]_0 (\reg1_reg[2]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface
   (axi_arready_reg_0,
    axi_awready_reg_0,
    axi_wready_reg_0,
    S_AXI_BVALID,
    aw_en_reg_0,
    S_AXI_RVALID,
    S_AXI_RDATA,
    S_AXI_ARESETN_0,
    mem_rddout_i,
    \axi_rdata_reg[0]_0 ,
    E,
    S_AXI_ACLK,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    axi_rvalid_reg_0,
    \axi_rdata_reg[0]_1 ,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ARESETN,
    Q,
    \reg1_reg[2] ,
    fifo_tail0__18,
    S_AXI_WSTRB,
    \reg1_reg[2]_0 ,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    \axi_rdata[0]_i_2_0 );
  output axi_arready_reg_0;
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output S_AXI_BVALID;
  output aw_en_reg_0;
  output S_AXI_RVALID;
  output [0:0]S_AXI_RDATA;
  output [0:0]S_AXI_ARESETN_0;
  output [0:0]mem_rddout_i;
  input \axi_rdata_reg[0]_0 ;
  input [0:0]E;
  input S_AXI_ACLK;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input axi_rvalid_reg_0;
  input \axi_rdata_reg[0]_1 ;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ARESETN;
  input [2:0]Q;
  input \reg1_reg[2] ;
  input fifo_tail0__18;
  input [0:0]S_AXI_WSTRB;
  input \reg1_reg[2]_0 ;
  input [8:0]S_AXI_ARADDR;
  input [8:0]S_AXI_AWADDR;
  input \axi_rdata[0]_i_2_0 ;

  wire [0:0]E;
  wire [2:0]Q;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RVALID;
  wire [0:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aw_en_reg_0;
  wire aw_en_reg_1;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_reg_0;
  wire [8:0]axi_mem_rdAddr;
  wire [8:0]axi_mem_wrAddr;
  wire \axi_rdata[0]_i_2_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_0 ;
  wire \axi_rdata_reg[0]_1 ;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire fifo_tail0__18;
  wire [0:0]mem_rddout_i;
  wire \reg1[3]_i_2_n_0 ;
  wire \reg1[3]_i_4_n_0 ;
  wire \reg1[3]_i_5_n_0 ;
  wire \reg1[3]_i_6_n_0 ;
  wire \reg1[3]_i_7_n_0 ;
  wire \reg1_reg[2] ;
  wire \reg1_reg[2]_0 ;

  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(\axi_rdata_reg[0]_0 ));
  FDRE \axi_araddr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_ARADDR[8]),
        .Q(axi_mem_rdAddr[8]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_ARADDR[0]),
        .Q(axi_mem_rdAddr[0]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_ARADDR[1]),
        .Q(axi_mem_rdAddr[1]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_ARADDR[2]),
        .Q(axi_mem_rdAddr[2]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_ARADDR[3]),
        .Q(axi_mem_rdAddr[3]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_araddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_ARADDR[4]),
        .Q(axi_mem_rdAddr[4]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_araddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_ARADDR[5]),
        .Q(axi_mem_rdAddr[5]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_araddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_ARADDR[6]),
        .Q(axi_mem_rdAddr[6]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_araddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(S_AXI_ARADDR[7]),
        .Q(axi_mem_rdAddr[7]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(E),
        .Q(axi_arready_reg_0),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_awaddr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[8]),
        .Q(axi_mem_wrAddr[8]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[0]),
        .Q(axi_mem_wrAddr[0]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[1]),
        .Q(axi_mem_wrAddr[1]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[2]),
        .Q(axi_mem_wrAddr[2]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(axi_mem_wrAddr[3]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_awaddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[4]),
        .Q(axi_mem_wrAddr[4]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_awaddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[5]),
        .Q(axi_mem_wrAddr[5]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_awaddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[6]),
        .Q(axi_mem_wrAddr[6]),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE \axi_awaddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[7]),
        .Q(axi_mem_wrAddr[7]),
        .R(\axi_rdata_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(aw_en_reg_0),
        .I1(axi_awready_reg_0),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(S_AXI_BVALID),
        .R(\axi_rdata_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \axi_rdata[0]_i_2 
       (.I0(axi_mem_rdAddr[8]),
        .I1(axi_mem_rdAddr[6]),
        .I2(\axi_rdata[0]_i_3_n_0 ),
        .I3(axi_mem_rdAddr[7]),
        .I4(axi_mem_rdAddr[1]),
        .O(mem_rddout_i));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \axi_rdata[0]_i_3 
       (.I0(axi_mem_rdAddr[4]),
        .I1(axi_mem_rdAddr[3]),
        .I2(\axi_rdata[0]_i_2_0 ),
        .I3(axi_mem_rdAddr[0]),
        .I4(axi_mem_rdAddr[2]),
        .I5(axi_mem_rdAddr[5]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_rdata_reg[0]_1 ),
        .Q(S_AXI_RDATA),
        .R(\axi_rdata_reg[0]_0 ));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_reg_0),
        .Q(S_AXI_RVALID),
        .R(\axi_rdata_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_wready_i_1
       (.I0(aw_en_reg_0),
        .I1(axi_wready_reg_0),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(\axi_rdata_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \reg1[3]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(Q[2]),
        .I2(\reg1_reg[2] ),
        .I3(\reg1[3]_i_2_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \reg1[3]_i_2 
       (.I0(fifo_tail0__18),
        .I1(S_AXI_WSTRB),
        .I2(\reg1_reg[2]_0 ),
        .I3(axi_awready_reg_0),
        .I4(axi_wready_reg_0),
        .I5(\reg1[3]_i_4_n_0 ),
        .O(\reg1[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \reg1[3]_i_4 
       (.I0(\reg1[3]_i_5_n_0 ),
        .I1(\reg1[3]_i_6_n_0 ),
        .I2(axi_mem_wrAddr[7]),
        .I3(axi_mem_wrAddr[6]),
        .I4(axi_mem_wrAddr[8]),
        .I5(\reg1[3]_i_7_n_0 ),
        .O(\reg1[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg1[3]_i_5 
       (.I0(axi_mem_wrAddr[6]),
        .I1(axi_mem_wrAddr[7]),
        .I2(axi_mem_wrAddr[4]),
        .I3(axi_mem_wrAddr[5]),
        .O(\reg1[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \reg1[3]_i_6 
       (.I0(axi_mem_wrAddr[2]),
        .I1(axi_mem_wrAddr[3]),
        .I2(axi_mem_wrAddr[0]),
        .I3(axi_mem_wrAddr[1]),
        .O(\reg1[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \reg1[3]_i_7 
       (.I0(axi_mem_wrAddr[1]),
        .I1(axi_mem_wrAddr[4]),
        .I2(axi_mem_wrAddr[5]),
        .I3(axi_mem_wrAddr[2]),
        .I4(axi_mem_wrAddr[3]),
        .O(\reg1[3]_i_7_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_configReg_interface
   (axi_arready_reg,
    axi_awready_reg,
    axi_wready_reg,
    S_AXI_BVALID,
    aw_en_reg,
    S_AXI_RVALID,
    S_AXI_RDATA,
    ConfigClk_reg_0,
    processing_fifo_data_reg_0,
    SuperpixSel,
    Reset_not,
    ConfigIn,
    \reg_rddin_reg[0][0]_0 ,
    Q,
    \FSM_sequential_current_state_reg[2]_0 ,
    \FSM_sequential_current_state_reg[2]_1 ,
    \clk_counter_reg[2]_0 ,
    \reg1_reg[3]_0 ,
    mem_rddout_i,
    \clk_counter_reg[6]_0 ,
    S_AXI_ARESETN_0,
    ConfigClk_reg_1,
    ConfigIn0_out,
    S_AXI_ARESETN_1,
    processing_fifo_data,
    \FSM_sequential_current_state_reg[1]_0 ,
    \axi_rdata_reg[0] ,
    E,
    S_AXI_ACLK,
    axi_bvalid_reg,
    aw_en_reg_0,
    axi_rvalid_reg,
    \axi_rdata_reg[0]_0 ,
    ConfigClk_reg_2,
    processing_fifo_data_reg_1,
    SuperpixSel_reg_0,
    Reset_not_reg_0,
    ConfigIn_reg_0,
    \reg_rddin_reg[0][0]_1 ,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ARESETN,
    S_AXI_WSTRB);
  output axi_arready_reg;
  output axi_awready_reg;
  output axi_wready_reg;
  output S_AXI_BVALID;
  output aw_en_reg;
  output S_AXI_RVALID;
  output [0:0]S_AXI_RDATA;
  output ConfigClk_reg_0;
  output processing_fifo_data_reg_0;
  output SuperpixSel;
  output Reset_not;
  output ConfigIn;
  output \reg_rddin_reg[0][0]_0 ;
  output [2:0]Q;
  output \FSM_sequential_current_state_reg[2]_0 ;
  output \FSM_sequential_current_state_reg[2]_1 ;
  output [2:0]\clk_counter_reg[2]_0 ;
  output [1:0]\reg1_reg[3]_0 ;
  output [0:0]mem_rddout_i;
  output \clk_counter_reg[6]_0 ;
  output S_AXI_ARESETN_0;
  output ConfigClk_reg_1;
  output ConfigIn0_out;
  output S_AXI_ARESETN_1;
  output processing_fifo_data;
  output \FSM_sequential_current_state_reg[1]_0 ;
  input \axi_rdata_reg[0] ;
  input [0:0]E;
  input S_AXI_ACLK;
  input axi_bvalid_reg;
  input aw_en_reg_0;
  input axi_rvalid_reg;
  input \axi_rdata_reg[0]_0 ;
  input ConfigClk_reg_2;
  input processing_fifo_data_reg_1;
  input SuperpixSel_reg_0;
  input Reset_not_reg_0;
  input ConfigIn_reg_0;
  input \reg_rddin_reg[0][0]_1 ;
  input [8:0]S_AXI_ARADDR;
  input [8:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ARESETN;
  input [0:0]S_AXI_WSTRB;

  wire ConfigClk_reg_0;
  wire ConfigClk_reg_1;
  wire ConfigClk_reg_2;
  wire ConfigIn;
  wire ConfigIn0_out;
  wire ConfigIn_reg_0;
  wire [0:0]E;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_5_n_0 ;
  wire \FSM_sequential_current_state[2]_i_6_n_0 ;
  wire \FSM_sequential_current_state[2]_i_7_n_0 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire [2:0]Q;
  wire Reset_not;
  wire Reset_not_reg_0;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire S_AXI_ARESETN_1;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire [0:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire SuperpixSel;
  wire SuperpixSel_reg_0;
  wire aw_en_reg;
  wire aw_en_reg_0;
  wire axi4lite_interface_inst_n_7;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_bvalid_reg;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire axi_rvalid_reg;
  wire axi_wready_reg;
  wire [6:0]clk_counter;
  wire \clk_counter[6]_i_2_n_0 ;
  wire [2:0]\clk_counter_reg[2]_0 ;
  wire \clk_counter_reg[6]_0 ;
  wire \clk_counter_reg_n_0_[3] ;
  wire \clk_counter_reg_n_0_[4] ;
  wire \clk_counter_reg_n_0_[5] ;
  wire \clk_counter_reg_n_0_[6] ;
  wire [2:0]current_state__1;
  wire \fifo[0][3]_i_1_n_0 ;
  wire \fifo[0][3]_i_2_n_0 ;
  wire \fifo[0][3]_i_3_n_0 ;
  wire \fifo[10][3]_i_1_n_0 ;
  wire \fifo[11][3]_i_1_n_0 ;
  wire \fifo[11][3]_i_2_n_0 ;
  wire \fifo[12][3]_i_1_n_0 ;
  wire \fifo[13][3]_i_1_n_0 ;
  wire \fifo[14][3]_i_1_n_0 ;
  wire \fifo[15][3]_i_1_n_0 ;
  wire \fifo[15][3]_i_2_n_0 ;
  wire \fifo[16][3]_i_1_n_0 ;
  wire \fifo[16][3]_i_2_n_0 ;
  wire \fifo[16][3]_i_3_n_0 ;
  wire \fifo[16][3]_i_4_n_0 ;
  wire \fifo[17][3]_i_1_n_0 ;
  wire \fifo[17][3]_i_2_n_0 ;
  wire \fifo[18][3]_i_1_n_0 ;
  wire \fifo[19][3]_i_1_n_0 ;
  wire \fifo[19][3]_i_2_n_0 ;
  wire \fifo[1][3]_i_1_n_0 ;
  wire \fifo[1][3]_i_2_n_0 ;
  wire \fifo[1][3]_i_3_n_0 ;
  wire \fifo[20][3]_i_1_n_0 ;
  wire \fifo[21][3]_i_1_n_0 ;
  wire \fifo[22][3]_i_1_n_0 ;
  wire \fifo[23][3]_i_1_n_0 ;
  wire \fifo[23][3]_i_2_n_0 ;
  wire \fifo[24][3]_i_1_n_0 ;
  wire \fifo[24][3]_i_2_n_0 ;
  wire \fifo[25][3]_i_1_n_0 ;
  wire \fifo[26][3]_i_1_n_0 ;
  wire \fifo[27][3]_i_1_n_0 ;
  wire \fifo[27][3]_i_2_n_0 ;
  wire \fifo[28][3]_i_1_n_0 ;
  wire \fifo[28][3]_i_2_n_0 ;
  wire \fifo[29][3]_i_1_n_0 ;
  wire \fifo[29][3]_i_2_n_0 ;
  wire \fifo[29][3]_i_3_n_0 ;
  wire \fifo[2][3]_i_1_n_0 ;
  wire \fifo[2][3]_i_2_n_0 ;
  wire \fifo[30][3]_i_1_n_0 ;
  wire \fifo[30][3]_i_2_n_0 ;
  wire \fifo[31][3]_i_1_n_0 ;
  wire \fifo[32][3]_i_1_n_0 ;
  wire \fifo[32][3]_i_2_n_0 ;
  wire \fifo[33][3]_i_1_n_0 ;
  wire \fifo[33][3]_i_2_n_0 ;
  wire \fifo[34][3]_i_1_n_0 ;
  wire \fifo[35][3]_i_1_n_0 ;
  wire \fifo[35][3]_i_2_n_0 ;
  wire \fifo[36][3]_i_1_n_0 ;
  wire \fifo[36][3]_i_2_n_0 ;
  wire \fifo[37][3]_i_1_n_0 ;
  wire \fifo[37][3]_i_2_n_0 ;
  wire \fifo[38][3]_i_1_n_0 ;
  wire \fifo[39][3]_i_1_n_0 ;
  wire \fifo[39][3]_i_2_n_0 ;
  wire \fifo[39][3]_i_3_n_0 ;
  wire \fifo[39][3]_i_4_n_0 ;
  wire \fifo[3][3]_i_1_n_0 ;
  wire \fifo[40][3]_i_1_n_0 ;
  wire \fifo[40][3]_i_2_n_0 ;
  wire \fifo[41][3]_i_1_n_0 ;
  wire \fifo[41][3]_i_2_n_0 ;
  wire \fifo[42][3]_i_1_n_0 ;
  wire \fifo[42][3]_i_2_n_0 ;
  wire \fifo[42][3]_i_3_n_0 ;
  wire \fifo[43][3]_i_1_n_0 ;
  wire \fifo[43][3]_i_2_n_0 ;
  wire \fifo[44][3]_i_1_n_0 ;
  wire \fifo[45][3]_i_1_n_0 ;
  wire \fifo[46][3]_i_1_n_0 ;
  wire \fifo[47][3]_i_1_n_0 ;
  wire \fifo[48][3]_i_1_n_0 ;
  wire \fifo[48][3]_i_2_n_0 ;
  wire \fifo[49][3]_i_1_n_0 ;
  wire \fifo[4][3]_i_1_n_0 ;
  wire \fifo[4][3]_i_2_n_0 ;
  wire \fifo[50][3]_i_1_n_0 ;
  wire \fifo[50][3]_i_2_n_0 ;
  wire \fifo[51][3]_i_1_n_0 ;
  wire \fifo[51][3]_i_2_n_0 ;
  wire \fifo[52][3]_i_1_n_0 ;
  wire \fifo[53][3]_i_1_n_0 ;
  wire \fifo[53][3]_i_2_n_0 ;
  wire \fifo[54][3]_i_1_n_0 ;
  wire \fifo[55][3]_i_1_n_0 ;
  wire \fifo[56][3]_i_1_n_0 ;
  wire \fifo[57][3]_i_1_n_0 ;
  wire \fifo[58][3]_i_1_n_0 ;
  wire \fifo[59][3]_i_1_n_0 ;
  wire \fifo[59][3]_i_2_n_0 ;
  wire \fifo[5][3]_i_1_n_0 ;
  wire \fifo[60][3]_i_1_n_0 ;
  wire \fifo[60][3]_i_2_n_0 ;
  wire \fifo[61][3]_i_1_n_0 ;
  wire \fifo[61][3]_i_2_n_0 ;
  wire \fifo[62][3]_i_1_n_0 ;
  wire \fifo[62][3]_i_2_n_0 ;
  wire \fifo[63][3]_i_1_n_0 ;
  wire \fifo[64][3]_i_1_n_0 ;
  wire \fifo[65][3]_i_1_n_0 ;
  wire \fifo[65][3]_i_2_n_0 ;
  wire \fifo[66][3]_i_1_n_0 ;
  wire \fifo[67][3]_i_1_n_0 ;
  wire \fifo[67][3]_i_2_n_0 ;
  wire \fifo[68][3]_i_1_n_0 ;
  wire \fifo[68][3]_i_2_n_0 ;
  wire \fifo[68][3]_i_3_n_0 ;
  wire \fifo[69][3]_i_1_n_0 ;
  wire \fifo[69][3]_i_2_n_0 ;
  wire \fifo[6][3]_i_1_n_0 ;
  wire \fifo[70][3]_i_1_n_0 ;
  wire \fifo[70][3]_i_2_n_0 ;
  wire \fifo[71][3]_i_1_n_0 ;
  wire \fifo[71][3]_i_2_n_0 ;
  wire \fifo[72][3]_i_1_n_0 ;
  wire \fifo[72][3]_i_2_n_0 ;
  wire \fifo[73][3]_i_1_n_0 ;
  wire \fifo[74][3]_i_1_n_0 ;
  wire \fifo[74][3]_i_2_n_0 ;
  wire \fifo[74][3]_i_3_n_0 ;
  wire \fifo[75][3]_i_1_n_0 ;
  wire \fifo[75][3]_i_2_n_0 ;
  wire \fifo[75][3]_i_3_n_0 ;
  wire \fifo[76][3]_i_1_n_0 ;
  wire \fifo[77][3]_i_1_n_0 ;
  wire \fifo[78][3]_i_1_n_0 ;
  wire \fifo[79][3]_i_1_n_0 ;
  wire \fifo[7][3]_i_1_n_0 ;
  wire \fifo[80][3]_i_1_n_0 ;
  wire \fifo[81][3]_i_1_n_0 ;
  wire \fifo[82][3]_i_1_n_0 ;
  wire \fifo[82][3]_i_2_n_0 ;
  wire \fifo[83][3]_i_1_n_0 ;
  wire \fifo[83][3]_i_2_n_0 ;
  wire \fifo[83][3]_i_3_n_0 ;
  wire \fifo[84][3]_i_1_n_0 ;
  wire \fifo[85][3]_i_1_n_0 ;
  wire \fifo[86][3]_i_1_n_0 ;
  wire \fifo[87][3]_i_1_n_0 ;
  wire \fifo[88][3]_i_1_n_0 ;
  wire \fifo[89][3]_i_1_n_0 ;
  wire \fifo[8][3]_i_1_n_0 ;
  wire \fifo[8][3]_i_2_n_0 ;
  wire \fifo[8][3]_i_3_n_0 ;
  wire \fifo[90][3]_i_1_n_0 ;
  wire \fifo[90][3]_i_2_n_0 ;
  wire \fifo[91][3]_i_1_n_0 ;
  wire \fifo[92][3]_i_1_n_0 ;
  wire \fifo[93][3]_i_1_n_0 ;
  wire \fifo[94][3]_i_1_n_0 ;
  wire \fifo[95][3]_i_1_n_0 ;
  wire \fifo[96][3]_i_1_n_0 ;
  wire \fifo[97][3]_i_1_n_0 ;
  wire \fifo[97][3]_i_2_n_0 ;
  wire \fifo[98][3]_i_1_n_0 ;
  wire \fifo[99][3]_i_1_n_0 ;
  wire \fifo[9][3]_i_1_n_0 ;
  wire \fifo[9][3]_i_2_n_0 ;
  wire [6:0]fifo_count;
  wire \fifo_count[1]_i_2_n_0 ;
  wire \fifo_count[2]_i_2_n_0 ;
  wire \fifo_count[2]_i_3_n_0 ;
  wire \fifo_count[3]_i_2_n_0 ;
  wire \fifo_count[3]_i_3_n_0 ;
  wire \fifo_count[4]_i_2_n_0 ;
  wire \fifo_count[4]_i_3_n_0 ;
  wire \fifo_count[5]_i_2_n_0 ;
  wire \fifo_count[5]_i_3_n_0 ;
  wire \fifo_count[6]_i_1_n_0 ;
  wire \fifo_count[6]_i_3_n_0 ;
  wire \fifo_count[6]_i_4_n_0 ;
  wire \fifo_count[6]_i_5_n_0 ;
  wire \fifo_count[6]_i_6_n_0 ;
  wire \fifo_count_reg_n_0_[0] ;
  wire \fifo_count_reg_n_0_[1] ;
  wire \fifo_count_reg_n_0_[2] ;
  wire \fifo_count_reg_n_0_[3] ;
  wire \fifo_count_reg_n_0_[4] ;
  wire \fifo_count_reg_n_0_[5] ;
  wire \fifo_count_reg_n_0_[6] ;
  wire [3:0]fifo_data;
  wire \fifo_data[0]_i_1_n_0 ;
  wire \fifo_data[0]_i_22_n_0 ;
  wire \fifo_data[0]_i_23_n_0 ;
  wire \fifo_data[0]_i_24_n_0 ;
  wire \fifo_data[0]_i_25_n_0 ;
  wire \fifo_data[0]_i_26_n_0 ;
  wire \fifo_data[0]_i_27_n_0 ;
  wire \fifo_data[0]_i_28_n_0 ;
  wire \fifo_data[0]_i_29_n_0 ;
  wire \fifo_data[0]_i_2_n_0 ;
  wire \fifo_data[0]_i_30_n_0 ;
  wire \fifo_data[0]_i_31_n_0 ;
  wire \fifo_data[0]_i_32_n_0 ;
  wire \fifo_data[0]_i_33_n_0 ;
  wire \fifo_data[0]_i_34_n_0 ;
  wire \fifo_data[0]_i_35_n_0 ;
  wire \fifo_data[0]_i_36_n_0 ;
  wire \fifo_data[0]_i_37_n_0 ;
  wire \fifo_data[0]_i_38_n_0 ;
  wire \fifo_data[0]_i_39_n_0 ;
  wire \fifo_data[0]_i_3_n_0 ;
  wire \fifo_data[0]_i_40_n_0 ;
  wire \fifo_data[0]_i_41_n_0 ;
  wire \fifo_data[0]_i_42_n_0 ;
  wire \fifo_data[0]_i_43_n_0 ;
  wire \fifo_data[0]_i_44_n_0 ;
  wire \fifo_data[0]_i_45_n_0 ;
  wire \fifo_data[1]_i_1_n_0 ;
  wire \fifo_data[1]_i_22_n_0 ;
  wire \fifo_data[1]_i_23_n_0 ;
  wire \fifo_data[1]_i_24_n_0 ;
  wire \fifo_data[1]_i_25_n_0 ;
  wire \fifo_data[1]_i_26_n_0 ;
  wire \fifo_data[1]_i_27_n_0 ;
  wire \fifo_data[1]_i_28_n_0 ;
  wire \fifo_data[1]_i_29_n_0 ;
  wire \fifo_data[1]_i_2_n_0 ;
  wire \fifo_data[1]_i_30_n_0 ;
  wire \fifo_data[1]_i_31_n_0 ;
  wire \fifo_data[1]_i_32_n_0 ;
  wire \fifo_data[1]_i_33_n_0 ;
  wire \fifo_data[1]_i_34_n_0 ;
  wire \fifo_data[1]_i_35_n_0 ;
  wire \fifo_data[1]_i_36_n_0 ;
  wire \fifo_data[1]_i_37_n_0 ;
  wire \fifo_data[1]_i_38_n_0 ;
  wire \fifo_data[1]_i_39_n_0 ;
  wire \fifo_data[1]_i_3_n_0 ;
  wire \fifo_data[1]_i_40_n_0 ;
  wire \fifo_data[1]_i_41_n_0 ;
  wire \fifo_data[1]_i_42_n_0 ;
  wire \fifo_data[1]_i_43_n_0 ;
  wire \fifo_data[1]_i_44_n_0 ;
  wire \fifo_data[1]_i_45_n_0 ;
  wire \fifo_data[2]_i_1_n_0 ;
  wire \fifo_data[2]_i_22_n_0 ;
  wire \fifo_data[2]_i_23_n_0 ;
  wire \fifo_data[2]_i_24_n_0 ;
  wire \fifo_data[2]_i_25_n_0 ;
  wire \fifo_data[2]_i_26_n_0 ;
  wire \fifo_data[2]_i_27_n_0 ;
  wire \fifo_data[2]_i_28_n_0 ;
  wire \fifo_data[2]_i_29_n_0 ;
  wire \fifo_data[2]_i_2_n_0 ;
  wire \fifo_data[2]_i_30_n_0 ;
  wire \fifo_data[2]_i_31_n_0 ;
  wire \fifo_data[2]_i_32_n_0 ;
  wire \fifo_data[2]_i_33_n_0 ;
  wire \fifo_data[2]_i_34_n_0 ;
  wire \fifo_data[2]_i_35_n_0 ;
  wire \fifo_data[2]_i_36_n_0 ;
  wire \fifo_data[2]_i_37_n_0 ;
  wire \fifo_data[2]_i_38_n_0 ;
  wire \fifo_data[2]_i_39_n_0 ;
  wire \fifo_data[2]_i_3_n_0 ;
  wire \fifo_data[2]_i_40_n_0 ;
  wire \fifo_data[2]_i_41_n_0 ;
  wire \fifo_data[2]_i_42_n_0 ;
  wire \fifo_data[2]_i_43_n_0 ;
  wire \fifo_data[2]_i_44_n_0 ;
  wire \fifo_data[2]_i_45_n_0 ;
  wire \fifo_data[3]_i_1_n_0 ;
  wire \fifo_data[3]_i_25_n_0 ;
  wire \fifo_data[3]_i_26_n_0 ;
  wire \fifo_data[3]_i_27_n_0 ;
  wire \fifo_data[3]_i_28_n_0 ;
  wire \fifo_data[3]_i_29_n_0 ;
  wire \fifo_data[3]_i_2_n_0 ;
  wire \fifo_data[3]_i_30_n_0 ;
  wire \fifo_data[3]_i_31_n_0 ;
  wire \fifo_data[3]_i_32_n_0 ;
  wire \fifo_data[3]_i_33_n_0 ;
  wire \fifo_data[3]_i_34_n_0 ;
  wire \fifo_data[3]_i_35_n_0 ;
  wire \fifo_data[3]_i_36_n_0 ;
  wire \fifo_data[3]_i_37_n_0 ;
  wire \fifo_data[3]_i_38_n_0 ;
  wire \fifo_data[3]_i_39_n_0 ;
  wire \fifo_data[3]_i_3_n_0 ;
  wire \fifo_data[3]_i_40_n_0 ;
  wire \fifo_data[3]_i_41_n_0 ;
  wire \fifo_data[3]_i_42_n_0 ;
  wire \fifo_data[3]_i_43_n_0 ;
  wire \fifo_data[3]_i_44_n_0 ;
  wire \fifo_data[3]_i_45_n_0 ;
  wire \fifo_data[3]_i_46_n_0 ;
  wire \fifo_data[3]_i_47_n_0 ;
  wire \fifo_data[3]_i_48_n_0 ;
  wire \fifo_data[3]_i_4_n_0 ;
  wire \fifo_data[3]_i_5_n_0 ;
  wire \fifo_data[3]_i_7_n_0 ;
  wire \fifo_data_reg[0]_i_10_n_0 ;
  wire \fifo_data_reg[0]_i_11_n_0 ;
  wire \fifo_data_reg[0]_i_12_n_0 ;
  wire \fifo_data_reg[0]_i_13_n_0 ;
  wire \fifo_data_reg[0]_i_14_n_0 ;
  wire \fifo_data_reg[0]_i_15_n_0 ;
  wire \fifo_data_reg[0]_i_16_n_0 ;
  wire \fifo_data_reg[0]_i_17_n_0 ;
  wire \fifo_data_reg[0]_i_18_n_0 ;
  wire \fifo_data_reg[0]_i_19_n_0 ;
  wire \fifo_data_reg[0]_i_20_n_0 ;
  wire \fifo_data_reg[0]_i_21_n_0 ;
  wire \fifo_data_reg[0]_i_4_n_0 ;
  wire \fifo_data_reg[0]_i_5_n_0 ;
  wire \fifo_data_reg[0]_i_6_n_0 ;
  wire \fifo_data_reg[0]_i_7_n_0 ;
  wire \fifo_data_reg[0]_i_8_n_0 ;
  wire \fifo_data_reg[0]_i_9_n_0 ;
  wire \fifo_data_reg[1]_i_10_n_0 ;
  wire \fifo_data_reg[1]_i_11_n_0 ;
  wire \fifo_data_reg[1]_i_12_n_0 ;
  wire \fifo_data_reg[1]_i_13_n_0 ;
  wire \fifo_data_reg[1]_i_14_n_0 ;
  wire \fifo_data_reg[1]_i_15_n_0 ;
  wire \fifo_data_reg[1]_i_16_n_0 ;
  wire \fifo_data_reg[1]_i_17_n_0 ;
  wire \fifo_data_reg[1]_i_18_n_0 ;
  wire \fifo_data_reg[1]_i_19_n_0 ;
  wire \fifo_data_reg[1]_i_20_n_0 ;
  wire \fifo_data_reg[1]_i_21_n_0 ;
  wire \fifo_data_reg[1]_i_4_n_0 ;
  wire \fifo_data_reg[1]_i_5_n_0 ;
  wire \fifo_data_reg[1]_i_6_n_0 ;
  wire \fifo_data_reg[1]_i_7_n_0 ;
  wire \fifo_data_reg[1]_i_8_n_0 ;
  wire \fifo_data_reg[1]_i_9_n_0 ;
  wire \fifo_data_reg[2]_i_10_n_0 ;
  wire \fifo_data_reg[2]_i_11_n_0 ;
  wire \fifo_data_reg[2]_i_12_n_0 ;
  wire \fifo_data_reg[2]_i_13_n_0 ;
  wire \fifo_data_reg[2]_i_14_n_0 ;
  wire \fifo_data_reg[2]_i_15_n_0 ;
  wire \fifo_data_reg[2]_i_16_n_0 ;
  wire \fifo_data_reg[2]_i_17_n_0 ;
  wire \fifo_data_reg[2]_i_18_n_0 ;
  wire \fifo_data_reg[2]_i_19_n_0 ;
  wire \fifo_data_reg[2]_i_20_n_0 ;
  wire \fifo_data_reg[2]_i_21_n_0 ;
  wire \fifo_data_reg[2]_i_4_n_0 ;
  wire \fifo_data_reg[2]_i_5_n_0 ;
  wire \fifo_data_reg[2]_i_6_n_0 ;
  wire \fifo_data_reg[2]_i_7_n_0 ;
  wire \fifo_data_reg[2]_i_8_n_0 ;
  wire \fifo_data_reg[2]_i_9_n_0 ;
  wire \fifo_data_reg[3]_i_10_n_0 ;
  wire \fifo_data_reg[3]_i_11_n_0 ;
  wire \fifo_data_reg[3]_i_12_n_0 ;
  wire \fifo_data_reg[3]_i_13_n_0 ;
  wire \fifo_data_reg[3]_i_14_n_0 ;
  wire \fifo_data_reg[3]_i_15_n_0 ;
  wire \fifo_data_reg[3]_i_16_n_0 ;
  wire \fifo_data_reg[3]_i_17_n_0 ;
  wire \fifo_data_reg[3]_i_18_n_0 ;
  wire \fifo_data_reg[3]_i_19_n_0 ;
  wire \fifo_data_reg[3]_i_20_n_0 ;
  wire \fifo_data_reg[3]_i_21_n_0 ;
  wire \fifo_data_reg[3]_i_22_n_0 ;
  wire \fifo_data_reg[3]_i_23_n_0 ;
  wire \fifo_data_reg[3]_i_24_n_0 ;
  wire \fifo_data_reg[3]_i_6_n_0 ;
  wire \fifo_data_reg[3]_i_8_n_0 ;
  wire \fifo_data_reg[3]_i_9_n_0 ;
  wire \fifo_head[0]_i_1_n_0 ;
  wire \fifo_head[2]_i_1_n_0 ;
  wire [6:0]fifo_head_reg;
  wire [3:0]\fifo_reg[0]_0 ;
  wire [3:0]\fifo_reg[10]_10 ;
  wire [3:0]\fifo_reg[11]_11 ;
  wire [3:0]\fifo_reg[12]_12 ;
  wire [3:0]\fifo_reg[13]_13 ;
  wire [3:0]\fifo_reg[14]_14 ;
  wire [3:0]\fifo_reg[15]_15 ;
  wire [3:0]\fifo_reg[16]_16 ;
  wire [3:0]\fifo_reg[17]_17 ;
  wire [3:0]\fifo_reg[18]_18 ;
  wire [3:0]\fifo_reg[19]_19 ;
  wire [3:0]\fifo_reg[1]_1 ;
  wire [3:0]\fifo_reg[20]_20 ;
  wire [3:0]\fifo_reg[21]_21 ;
  wire [3:0]\fifo_reg[22]_22 ;
  wire [3:0]\fifo_reg[23]_23 ;
  wire [3:0]\fifo_reg[24]_24 ;
  wire [3:0]\fifo_reg[25]_25 ;
  wire [3:0]\fifo_reg[26]_26 ;
  wire [3:0]\fifo_reg[27]_27 ;
  wire [3:0]\fifo_reg[28]_28 ;
  wire [3:0]\fifo_reg[29]_29 ;
  wire [3:0]\fifo_reg[2]_2 ;
  wire [3:0]\fifo_reg[30]_30 ;
  wire [3:0]\fifo_reg[31]_31 ;
  wire [3:0]\fifo_reg[32]_32 ;
  wire [3:0]\fifo_reg[33]_33 ;
  wire [3:0]\fifo_reg[34]_34 ;
  wire [3:0]\fifo_reg[35]_35 ;
  wire [3:0]\fifo_reg[36]_36 ;
  wire [3:0]\fifo_reg[37]_37 ;
  wire [3:0]\fifo_reg[38]_38 ;
  wire [3:0]\fifo_reg[39]_39 ;
  wire [3:0]\fifo_reg[3]_3 ;
  wire [3:0]\fifo_reg[40]_40 ;
  wire [3:0]\fifo_reg[41]_41 ;
  wire [3:0]\fifo_reg[42]_42 ;
  wire [3:0]\fifo_reg[43]_43 ;
  wire [3:0]\fifo_reg[44]_44 ;
  wire [3:0]\fifo_reg[45]_45 ;
  wire [3:0]\fifo_reg[46]_46 ;
  wire [3:0]\fifo_reg[47]_47 ;
  wire [3:0]\fifo_reg[48]_48 ;
  wire [3:0]\fifo_reg[49]_49 ;
  wire [3:0]\fifo_reg[4]_4 ;
  wire [3:0]\fifo_reg[50]_50 ;
  wire [3:0]\fifo_reg[51]_51 ;
  wire [3:0]\fifo_reg[52]_52 ;
  wire [3:0]\fifo_reg[53]_53 ;
  wire [3:0]\fifo_reg[54]_54 ;
  wire [3:0]\fifo_reg[55]_55 ;
  wire [3:0]\fifo_reg[56]_56 ;
  wire [3:0]\fifo_reg[57]_57 ;
  wire [3:0]\fifo_reg[58]_58 ;
  wire [3:0]\fifo_reg[59]_59 ;
  wire [3:0]\fifo_reg[5]_5 ;
  wire [3:0]\fifo_reg[60]_60 ;
  wire [3:0]\fifo_reg[61]_61 ;
  wire [3:0]\fifo_reg[62]_62 ;
  wire [3:0]\fifo_reg[63]_63 ;
  wire [3:0]\fifo_reg[64]_64 ;
  wire [3:0]\fifo_reg[65]_65 ;
  wire [3:0]\fifo_reg[66]_66 ;
  wire [3:0]\fifo_reg[67]_67 ;
  wire [3:0]\fifo_reg[68]_68 ;
  wire [3:0]\fifo_reg[69]_69 ;
  wire [3:0]\fifo_reg[6]_6 ;
  wire [3:0]\fifo_reg[70]_70 ;
  wire [3:0]\fifo_reg[71]_71 ;
  wire [3:0]\fifo_reg[72]_72 ;
  wire [3:0]\fifo_reg[73]_73 ;
  wire [3:0]\fifo_reg[74]_74 ;
  wire [3:0]\fifo_reg[75]_75 ;
  wire [3:0]\fifo_reg[76]_76 ;
  wire [3:0]\fifo_reg[77]_77 ;
  wire [3:0]\fifo_reg[78]_78 ;
  wire [3:0]\fifo_reg[79]_79 ;
  wire [3:0]\fifo_reg[7]_7 ;
  wire [3:0]\fifo_reg[80]_80 ;
  wire [3:0]\fifo_reg[81]_81 ;
  wire [3:0]\fifo_reg[82]_82 ;
  wire [3:0]\fifo_reg[83]_83 ;
  wire [3:0]\fifo_reg[84]_84 ;
  wire [3:0]\fifo_reg[85]_85 ;
  wire [3:0]\fifo_reg[86]_86 ;
  wire [3:0]\fifo_reg[87]_87 ;
  wire [3:0]\fifo_reg[88]_88 ;
  wire [3:0]\fifo_reg[89]_89 ;
  wire [3:0]\fifo_reg[8]_8 ;
  wire [3:0]\fifo_reg[90]_90 ;
  wire [3:0]\fifo_reg[91]_91 ;
  wire [3:0]\fifo_reg[92]_92 ;
  wire [3:0]\fifo_reg[93]_93 ;
  wire [3:0]\fifo_reg[94]_94 ;
  wire [3:0]\fifo_reg[95]_95 ;
  wire [3:0]\fifo_reg[96]_96 ;
  wire [3:0]\fifo_reg[97]_97 ;
  wire [3:0]\fifo_reg[98]_98 ;
  wire [3:0]\fifo_reg[99]_99 ;
  wire [3:0]\fifo_reg[9]_9 ;
  wire fifo_tail0__18;
  wire \fifo_tail[6]_i_2_n_0 ;
  wire [6:0]fifo_tail_reg;
  wire [0:0]mem_rddout_i;
  wire [6:1]p_0_in;
  wire [6:0]p_0_in__0;
  wire [31:0]prev_reg_wrdout;
  wire prev_reg_wrdout0;
  wire prev_reg_wrdout18_in;
  wire prev_reg_wrdout1_carry__0_i_1_n_0;
  wire prev_reg_wrdout1_carry__0_i_2_n_0;
  wire prev_reg_wrdout1_carry__0_i_3_n_0;
  wire prev_reg_wrdout1_carry__0_n_6;
  wire prev_reg_wrdout1_carry__0_n_7;
  wire prev_reg_wrdout1_carry_i_1_n_0;
  wire prev_reg_wrdout1_carry_i_2_n_0;
  wire prev_reg_wrdout1_carry_i_3_n_0;
  wire prev_reg_wrdout1_carry_i_4_n_0;
  wire prev_reg_wrdout1_carry_i_5_n_0;
  wire prev_reg_wrdout1_carry_i_6_n_0;
  wire prev_reg_wrdout1_carry_i_7_n_0;
  wire prev_reg_wrdout1_carry_i_8_n_0;
  wire prev_reg_wrdout1_carry_n_0;
  wire prev_reg_wrdout1_carry_n_1;
  wire prev_reg_wrdout1_carry_n_2;
  wire prev_reg_wrdout1_carry_n_3;
  wire prev_reg_wrdout1_carry_n_4;
  wire prev_reg_wrdout1_carry_n_5;
  wire prev_reg_wrdout1_carry_n_6;
  wire prev_reg_wrdout1_carry_n_7;
  wire processing_fifo_data;
  wire processing_fifo_data_i_7_n_0;
  wire processing_fifo_data_reg_0;
  wire processing_fifo_data_reg_1;
  wire \reg1[3]_i_3_n_0 ;
  wire [1:0]\reg1_reg[3]_0 ;
  wire \reg1_reg_n_0_[0] ;
  wire \reg1_reg_n_0_[1] ;
  wire \reg_rddin_reg[0][0]_0 ;
  wire \reg_rddin_reg[0][0]_1 ;
  wire [12:0]wait_counter0;
  wire wait_counter0_carry__0_i_1_n_0;
  wire wait_counter0_carry__0_i_2_n_0;
  wire wait_counter0_carry__0_i_3_n_0;
  wire wait_counter0_carry__0_i_4_n_0;
  wire wait_counter0_carry__0_n_5;
  wire wait_counter0_carry__0_n_6;
  wire wait_counter0_carry__0_n_7;
  wire wait_counter0_carry_i_1_n_0;
  wire wait_counter0_carry_i_2_n_0;
  wire wait_counter0_carry_i_3_n_0;
  wire wait_counter0_carry_i_4_n_0;
  wire wait_counter0_carry_i_5_n_0;
  wire wait_counter0_carry_i_6_n_0;
  wire wait_counter0_carry_i_7_n_0;
  wire wait_counter0_carry_i_8_n_0;
  wire wait_counter0_carry_n_0;
  wire wait_counter0_carry_n_1;
  wire wait_counter0_carry_n_2;
  wire wait_counter0_carry_n_3;
  wire wait_counter0_carry_n_4;
  wire wait_counter0_carry_n_5;
  wire wait_counter0_carry_n_6;
  wire wait_counter0_carry_n_7;
  wire \wait_counter[12]_i_1_n_0 ;
  wire [12:0]wait_counter_reg;
  wire [7:0]NLW_prev_reg_wrdout1_carry_O_UNCONNECTED;
  wire [7:3]NLW_prev_reg_wrdout1_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_prev_reg_wrdout1_carry__0_O_UNCONNECTED;
  wire [7:3]NLW_wait_counter0_carry__0_CO_UNCONNECTED;
  wire [7:4]NLW_wait_counter0_carry__0_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'hFDFF)) 
    ConfigClk_i_3
       (.I0(\clk_counter_reg_n_0_[6] ),
        .I1(\clk_counter_reg_n_0_[3] ),
        .I2(\clk_counter_reg_n_0_[4] ),
        .I3(\clk_counter_reg_n_0_[5] ),
        .O(\clk_counter_reg[6]_0 ));
  FDCE ConfigClk_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\axi_rdata_reg[0] ),
        .D(ConfigClk_reg_2),
        .Q(ConfigClk_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00200200)) 
    ConfigIn_i_2
       (.I0(S_AXI_ARESETN),
        .I1(ConfigClk_reg_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(ConfigIn0_out));
  FDRE ConfigIn_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(ConfigIn_reg_0),
        .Q(ConfigIn),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h14151515)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\reg1_reg_n_0_[1] ),
        .I4(\reg1_reg_n_0_[0] ),
        .O(current_state__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1B1A)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\reg1_reg_n_0_[0] ),
        .O(current_state__1[1]));
  LUT6 #(
    .INIT(64'h00AA555511555550)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(ConfigClk_reg_0),
        .I1(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I2(fifo_tail0__18),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6564)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\reg1_reg_n_0_[1] ),
        .O(current_state__1[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_6_n_0 ),
        .I2(wait_counter_reg[7]),
        .I3(wait_counter_reg[6]),
        .I4(wait_counter_reg[9]),
        .I5(wait_counter_reg[8]),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(\FSM_sequential_current_state[2]_i_7_n_0 ),
        .I1(\fifo_count_reg_n_0_[1] ),
        .I2(\fifo_count_reg_n_0_[3] ),
        .I3(\fifo_count_reg_n_0_[2] ),
        .I4(processing_fifo_data_reg_0),
        .O(fifo_tail0__18));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(wait_counter_reg[1]),
        .I1(wait_counter_reg[4]),
        .I2(wait_counter_reg[5]),
        .I3(wait_counter_reg[2]),
        .I4(wait_counter_reg[3]),
        .O(\FSM_sequential_current_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_current_state[2]_i_6 
       (.I0(wait_counter_reg[11]),
        .I1(wait_counter_reg[10]),
        .I2(wait_counter_reg[0]),
        .I3(wait_counter_reg[12]),
        .O(\FSM_sequential_current_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_current_state[2]_i_7 
       (.I0(\fifo_count_reg_n_0_[5] ),
        .I1(\fifo_count_reg_n_0_[4] ),
        .I2(\fifo_count_reg_n_0_[0] ),
        .I3(\fifo_count_reg_n_0_[6] ),
        .O(\FSM_sequential_current_state[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE_STATE:000,RESET_STATE_DONE:010,CONFIGIN_DONE_STATE:100,CONFIGOUT_STATE:110,WAIT_STATE:101,CONFIGIN_STATE:011,RESET_STATE:001" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(current_state__1[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "IDLE_STATE:000,RESET_STATE_DONE:010,CONFIGIN_DONE_STATE:100,CONFIGOUT_STATE:110,WAIT_STATE:101,CONFIGIN_STATE:011,RESET_STATE:001" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(current_state__1[1]),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "IDLE_STATE:000,RESET_STATE_DONE:010,CONFIGIN_DONE_STATE:100,CONFIGOUT_STATE:110,WAIT_STATE:101,CONFIGIN_STATE:011,RESET_STATE:001" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(current_state__1[2]),
        .Q(Q[2]));
  FDPE Reset_not_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(Reset_not_reg_0),
        .PRE(\axi_rdata_reg[0] ),
        .Q(Reset_not));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    SuperpixSel_i_2
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(\FSM_sequential_current_state_reg[2]_1 ));
  FDRE SuperpixSel_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(SuperpixSel_reg_0),
        .Q(SuperpixSel),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top axi4lite_interface_inst
       (.E(E),
        .Q(Q),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(axi4lite_interface_inst_n_7),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .aw_en_reg(aw_en_reg),
        .aw_en_reg_0(aw_en_reg_0),
        .axi_arready_reg(axi_arready_reg),
        .axi_awready_reg(axi_awready_reg),
        .axi_bvalid_reg(axi_bvalid_reg),
        .\axi_rdata[0]_i_2 (\reg_rddin_reg[0][0]_0 ),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .\axi_rdata_reg[0]_0 (\axi_rdata_reg[0]_0 ),
        .axi_rvalid_reg(axi_rvalid_reg),
        .axi_wready_reg(axi_wready_reg),
        .fifo_tail0__18(fifo_tail0__18),
        .mem_rddout_i(mem_rddout_i),
        .\reg1_reg[2] (ConfigClk_reg_0),
        .\reg1_reg[2]_0 (\reg1[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_1 
       (.I0(\clk_counter_reg[2]_0 [0]),
        .O(clk_counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_counter[1]_i_1 
       (.I0(\clk_counter_reg[2]_0 [0]),
        .I1(\clk_counter_reg[2]_0 [1]),
        .O(clk_counter[1]));
  LUT6 #(
    .INIT(64'hFFFF00000000FDFF)) 
    \clk_counter[2]_i_1 
       (.I0(\clk_counter_reg_n_0_[6] ),
        .I1(\clk_counter_reg_n_0_[3] ),
        .I2(\clk_counter_reg_n_0_[4] ),
        .I3(\clk_counter_reg_n_0_[5] ),
        .I4(\clk_counter[6]_i_2_n_0 ),
        .I5(\clk_counter_reg[2]_0 [2]),
        .O(clk_counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_counter[3]_i_1 
       (.I0(\clk_counter_reg[2]_0 [2]),
        .I1(\clk_counter_reg[2]_0 [0]),
        .I2(\clk_counter_reg[2]_0 [1]),
        .I3(\clk_counter_reg_n_0_[3] ),
        .O(clk_counter[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_counter[4]_i_1 
       (.I0(\clk_counter_reg_n_0_[3] ),
        .I1(\clk_counter_reg[2]_0 [1]),
        .I2(\clk_counter_reg[2]_0 [0]),
        .I3(\clk_counter_reg[2]_0 [2]),
        .I4(\clk_counter_reg_n_0_[4] ),
        .O(clk_counter[4]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \clk_counter[5]_i_1 
       (.I0(\clk_counter_reg_n_0_[6] ),
        .I1(\clk_counter_reg_n_0_[5] ),
        .I2(\clk_counter_reg[2]_0 [2]),
        .I3(\clk_counter_reg_n_0_[3] ),
        .I4(\clk_counter_reg_n_0_[4] ),
        .I5(\clk_counter[6]_i_2_n_0 ),
        .O(clk_counter[5]));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAAA2)) 
    \clk_counter[6]_i_1 
       (.I0(\clk_counter_reg_n_0_[6] ),
        .I1(\clk_counter_reg_n_0_[5] ),
        .I2(\clk_counter[6]_i_2_n_0 ),
        .I3(\clk_counter_reg[2]_0 [2]),
        .I4(\clk_counter_reg_n_0_[4] ),
        .I5(\clk_counter_reg_n_0_[3] ),
        .O(clk_counter[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clk_counter[6]_i_2 
       (.I0(\clk_counter_reg[2]_0 [0]),
        .I1(\clk_counter_reg[2]_0 [1]),
        .O(\clk_counter[6]_i_2_n_0 ));
  FDCE \clk_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\axi_rdata_reg[0] ),
        .D(clk_counter[0]),
        .Q(\clk_counter_reg[2]_0 [0]));
  FDCE \clk_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\axi_rdata_reg[0] ),
        .D(clk_counter[1]),
        .Q(\clk_counter_reg[2]_0 [1]));
  FDCE \clk_counter_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\axi_rdata_reg[0] ),
        .D(clk_counter[2]),
        .Q(\clk_counter_reg[2]_0 [2]));
  FDCE \clk_counter_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\axi_rdata_reg[0] ),
        .D(clk_counter[3]),
        .Q(\clk_counter_reg_n_0_[3] ));
  FDCE \clk_counter_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\axi_rdata_reg[0] ),
        .D(clk_counter[4]),
        .Q(\clk_counter_reg_n_0_[4] ));
  FDCE \clk_counter_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\axi_rdata_reg[0] ),
        .D(clk_counter[5]),
        .Q(\clk_counter_reg_n_0_[5] ));
  FDCE \clk_counter_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\axi_rdata_reg[0] ),
        .D(clk_counter[6]),
        .Q(\clk_counter_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[0][3]_i_1 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[3]),
        .I2(\fifo[0][3]_i_2_n_0 ),
        .I3(\fifo[0][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[0][3]_i_2 
       (.I0(fifo_head_reg[0]),
        .I1(fifo_head_reg[1]),
        .O(\fifo[0][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \fifo[0][3]_i_3 
       (.I0(fifo_head_reg[5]),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[6]),
        .O(\fifo[0][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[10][3]_i_1 
       (.I0(\fifo[8][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[2][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[10][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[11][3]_i_1 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[4]),
        .I2(\fifo[11][3]_i_2_n_0 ),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[11][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo[11][3]_i_2 
       (.I0(fifo_head_reg[1]),
        .I1(fifo_head_reg[3]),
        .O(\fifo[11][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[12][3]_i_1 
       (.I0(\fifo[9][3]_i_2_n_0 ),
        .I1(fifo_head_reg[0]),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[4][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[12][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[13][3]_i_1 
       (.I0(\fifo[9][3]_i_2_n_0 ),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[13][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[14][3]_i_1 
       (.I0(\fifo[8][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[4][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[14][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[15][3]_i_1 
       (.I0(\fifo[15][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[4]),
        .I3(fifo_head_reg[6]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[15][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fifo[15][3]_i_2 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[1]),
        .O(\fifo[15][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo[16][3]_i_1 
       (.I0(\fifo[16][3]_i_2_n_0 ),
        .I1(\fifo[16][3]_i_3_n_0 ),
        .I2(fifo_head_reg[4]),
        .I3(\fifo[16][3]_i_4_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[16][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[16][3]_i_2 
       (.I0(fifo_head_reg[0]),
        .I1(fifo_head_reg[3]),
        .O(\fifo[16][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[16][3]_i_3 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[1]),
        .O(\fifo[16][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[16][3]_i_4 
       (.I0(fifo_head_reg[5]),
        .I1(fifo_head_reg[6]),
        .O(\fifo[16][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[17][3]_i_1 
       (.I0(\fifo[17][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[4]),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[17][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[17][3]_i_2 
       (.I0(fifo_head_reg[1]),
        .I1(fifo_head_reg[3]),
        .O(\fifo[17][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[18][3]_i_1 
       (.I0(\fifo[16][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[4]),
        .I3(\fifo[2][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[18][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[19][3]_i_1 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[3]),
        .I2(\fifo[19][3]_i_2_n_0 ),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[19][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo[19][3]_i_2 
       (.I0(fifo_head_reg[1]),
        .I1(fifo_head_reg[4]),
        .O(\fifo[19][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[1][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[1][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[1][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[3]),
        .O(\fifo[1][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[1][3]_i_3 
       (.I0(fifo_head_reg[0]),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[5]),
        .O(\fifo[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[20][3]_i_1 
       (.I0(\fifo[17][3]_i_2_n_0 ),
        .I1(fifo_head_reg[0]),
        .I2(fifo_head_reg[4]),
        .I3(\fifo[4][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[20][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[21][3]_i_1 
       (.I0(\fifo[17][3]_i_2_n_0 ),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[21][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[22][3]_i_1 
       (.I0(\fifo[16][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[4]),
        .I3(\fifo[4][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[22][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[23][3]_i_1 
       (.I0(\fifo[23][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[3]),
        .I3(fifo_head_reg[6]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[23][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fifo[23][3]_i_2 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[1]),
        .O(\fifo[23][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[24][3]_i_1 
       (.I0(fifo_head_reg[0]),
        .I1(fifo_head_reg[1]),
        .I2(\fifo[24][3]_i_2_n_0 ),
        .I3(\fifo[8][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[24][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fifo[24][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[2]),
        .O(\fifo[24][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[25][3]_i_1 
       (.I0(\fifo[16][3]_i_3_n_0 ),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[4]),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[25][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[26][3]_i_1 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[0]),
        .I2(\fifo[19][3]_i_2_n_0 ),
        .I3(\fifo[8][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[26][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[27][3]_i_1 
       (.I0(\fifo[27][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[2]),
        .I3(fifo_head_reg[6]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[27][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fifo[27][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[1]),
        .O(\fifo[27][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[28][3]_i_1 
       (.I0(fifo_head_reg[0]),
        .I1(fifo_head_reg[1]),
        .I2(\fifo[28][3]_i_2_n_0 ),
        .I3(\fifo[8][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[28][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo[28][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[2]),
        .O(\fifo[28][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[29][3]_i_1 
       (.I0(\fifo[28][3]_i_2_n_0 ),
        .I1(\fifo[29][3]_i_2_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[29][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[29][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo[29][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[0]),
        .O(\fifo[29][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fifo[29][3]_i_3 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[1]),
        .O(\fifo[29][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[2][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[0]),
        .I3(\fifo[2][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[2][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[2][3]_i_2 
       (.I0(fifo_head_reg[1]),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[5]),
        .O(\fifo[2][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[30][3]_i_1 
       (.I0(\fifo[28][3]_i_2_n_0 ),
        .I1(\fifo[11][3]_i_2_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[30][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[30][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fifo[30][3]_i_2 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[0]),
        .O(\fifo[30][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[31][3]_i_1 
       (.I0(\fifo[15][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[4]),
        .I3(fifo_head_reg[6]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[31][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[32][3]_i_1 
       (.I0(\fifo[32][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[0]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[32][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \fifo[32][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[1]),
        .I3(fifo_head_reg[2]),
        .O(\fifo[32][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[33][3]_i_1 
       (.I0(\fifo[33][3]_i_2_n_0 ),
        .I1(fifo_head_reg[0]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[1]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[33][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \fifo[33][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[2]),
        .I3(fifo_head_reg[5]),
        .O(\fifo[33][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[34][3]_i_1 
       (.I0(\fifo[33][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[0]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[34][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[35][3]_i_1 
       (.I0(\fifo[35][3]_i_2_n_0 ),
        .I1(fifo_head_reg[0]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[2]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[35][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \fifo[35][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[1]),
        .I3(fifo_head_reg[5]),
        .O(\fifo[35][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[36][3]_i_1 
       (.I0(\fifo[36][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[1]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[36][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \fifo[36][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[5]),
        .O(\fifo[36][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[37][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(\fifo[37][3]_i_2_n_0 ),
        .I2(fifo_head_reg[0]),
        .I3(\fifo[29][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[37][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo[37][3]_i_2 
       (.I0(fifo_head_reg[5]),
        .I1(fifo_head_reg[2]),
        .O(\fifo[37][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[38][3]_i_1 
       (.I0(\fifo[35][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[0]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[38][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[39][3]_i_1 
       (.I0(\fifo[39][3]_i_2_n_0 ),
        .I1(\fifo[39][3]_i_3_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[39][3]_i_4_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[39][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo[39][3]_i_2 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[5]),
        .O(\fifo[39][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo[39][3]_i_3 
       (.I0(fifo_head_reg[1]),
        .I1(fifo_head_reg[0]),
        .O(\fifo[39][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fifo[39][3]_i_4 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[4]),
        .O(\fifo[39][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[3][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[1]),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[40][3]_i_1 
       (.I0(\fifo[8][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[40][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[40][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[40][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[1]),
        .O(\fifo[40][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[41][3]_i_1 
       (.I0(\fifo[9][3]_i_2_n_0 ),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[41][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[41][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[41][3]_i_2 
       (.I0(fifo_head_reg[0]),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[2]),
        .O(\fifo[41][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[42][3]_i_1 
       (.I0(\fifo[8][3]_i_2_n_0 ),
        .I1(\fifo[42][3]_i_2_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[42][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[42][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo[42][3]_i_2 
       (.I0(fifo_head_reg[5]),
        .I1(fifo_head_reg[1]),
        .O(\fifo[42][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fifo[42][3]_i_3 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[2]),
        .O(\fifo[42][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[43][3]_i_1 
       (.I0(\fifo[43][3]_i_2_n_0 ),
        .I1(\fifo[39][3]_i_3_n_0 ),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[39][3]_i_4_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[43][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo[43][3]_i_2 
       (.I0(fifo_head_reg[5]),
        .I1(fifo_head_reg[3]),
        .O(\fifo[43][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[44][3]_i_1 
       (.I0(\fifo[8][3]_i_2_n_0 ),
        .I1(\fifo[37][3]_i_2_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[29][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[44][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[45][3]_i_1 
       (.I0(\fifo[39][3]_i_2_n_0 ),
        .I1(\fifo[29][3]_i_2_n_0 ),
        .I2(fifo_head_reg[1]),
        .I3(\fifo[39][3]_i_4_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[45][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[46][3]_i_1 
       (.I0(\fifo[39][3]_i_2_n_0 ),
        .I1(\fifo[11][3]_i_2_n_0 ),
        .I2(fifo_head_reg[0]),
        .I3(\fifo[39][3]_i_4_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[46][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[47][3]_i_1 
       (.I0(\fifo[15][3]_i_2_n_0 ),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[5]),
        .I3(fifo_head_reg[6]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[47][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[48][3]_i_1 
       (.I0(\fifo[16][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[48][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[48][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[48][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[1]),
        .O(\fifo[48][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[49][3]_i_1 
       (.I0(\fifo[17][3]_i_2_n_0 ),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[41][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[49][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[4][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[0]),
        .I3(\fifo[4][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[4][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[4][3]_i_2 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[5]),
        .O(\fifo[4][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[50][3]_i_1 
       (.I0(\fifo[16][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[50][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[50][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[50][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[2]),
        .O(\fifo[50][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[51][3]_i_1 
       (.I0(\fifo[51][3]_i_2_n_0 ),
        .I1(\fifo[39][3]_i_3_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[42][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[51][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo[51][3]_i_2 
       (.I0(fifo_head_reg[5]),
        .I1(fifo_head_reg[4]),
        .O(\fifo[51][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[52][3]_i_1 
       (.I0(\fifo[16][3]_i_2_n_0 ),
        .I1(\fifo[37][3]_i_2_n_0 ),
        .I2(fifo_head_reg[4]),
        .I3(\fifo[29][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[52][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[53][3]_i_1 
       (.I0(\fifo[39][3]_i_2_n_0 ),
        .I1(\fifo[53][3]_i_2_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[29][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[53][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo[53][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[0]),
        .O(\fifo[53][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[54][3]_i_1 
       (.I0(\fifo[39][3]_i_2_n_0 ),
        .I1(\fifo[19][3]_i_2_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[30][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[54][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[55][3]_i_1 
       (.I0(\fifo[23][3]_i_2_n_0 ),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[5]),
        .I3(fifo_head_reg[6]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[55][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[56][3]_i_1 
       (.I0(\fifo[0][3]_i_2_n_0 ),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[50][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[56][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[57][3]_i_1 
       (.I0(\fifo[43][3]_i_2_n_0 ),
        .I1(\fifo[53][3]_i_2_n_0 ),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[29][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[57][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[58][3]_i_1 
       (.I0(\fifo[43][3]_i_2_n_0 ),
        .I1(\fifo[19][3]_i_2_n_0 ),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[30][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[58][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[59][3]_i_1 
       (.I0(\fifo[59][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[5]),
        .I3(fifo_head_reg[6]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[59][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fifo[59][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[1]),
        .O(\fifo[59][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[5][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \fifo[60][3]_i_1 
       (.I0(\fifo[39][3]_i_2_n_0 ),
        .I1(\fifo[60][3]_i_2_n_0 ),
        .I2(fifo_head_reg[1]),
        .I3(\fifo[30][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[60][3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \fifo[60][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[4]),
        .O(\fifo[60][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[61][3]_i_1 
       (.I0(\fifo[61][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[5]),
        .I3(fifo_head_reg[6]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[61][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fifo[61][3]_i_2 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[4]),
        .O(\fifo[61][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[62][3]_i_1 
       (.I0(\fifo[62][3]_i_2_n_0 ),
        .I1(fifo_head_reg[0]),
        .I2(fifo_head_reg[5]),
        .I3(fifo_head_reg[6]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[62][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \fifo[62][3]_i_2 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[4]),
        .I3(fifo_head_reg[1]),
        .O(\fifo[62][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \fifo[63][3]_i_1 
       (.I0(\fifo[15][3]_i_2_n_0 ),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[5]),
        .I3(fifo_head_reg[4]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[63][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[64][3]_i_1 
       (.I0(\fifo[32][3]_i_2_n_0 ),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[5]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[64][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[65][3]_i_1 
       (.I0(\fifo[65][3]_i_2_n_0 ),
        .I1(fifo_head_reg[0]),
        .I2(fifo_head_reg[1]),
        .I3(fifo_head_reg[5]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[65][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \fifo[65][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[2]),
        .I3(fifo_head_reg[6]),
        .O(\fifo[65][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[66][3]_i_1 
       (.I0(\fifo[65][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[5]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[66][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[67][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[6]),
        .I3(\fifo[67][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[67][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[67][3]_i_2 
       (.I0(fifo_head_reg[0]),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[5]),
        .O(\fifo[67][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo[68][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(\fifo[68][3]_i_2_n_0 ),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[68][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[68][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fifo[68][3]_i_2 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[0]),
        .O(\fifo[68][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[68][3]_i_3 
       (.I0(fifo_head_reg[5]),
        .I1(fifo_head_reg[1]),
        .O(\fifo[68][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo[69][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(\fifo[69][3]_i_2_n_0 ),
        .I2(fifo_head_reg[0]),
        .I3(\fifo[68][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[69][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo[69][3]_i_2 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[2]),
        .O(\fifo[69][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[6][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(fifo_head_reg[0]),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[2][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[6][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[70][3]_i_1 
       (.I0(\fifo[70][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[5]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[70][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \fifo[70][3]_i_2 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[1]),
        .I3(fifo_head_reg[6]),
        .O(\fifo[70][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \fifo[71][3]_i_1 
       (.I0(\fifo[71][3]_i_2_n_0 ),
        .I1(\fifo[39][3]_i_3_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[1][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[71][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \fifo[71][3]_i_2 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[6]),
        .O(\fifo[71][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo[72][3]_i_1 
       (.I0(\fifo[8][3]_i_2_n_0 ),
        .I1(\fifo[72][3]_i_2_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[68][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[72][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fifo[72][3]_i_2 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[2]),
        .O(\fifo[72][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[73][3]_i_1 
       (.I0(\fifo[9][3]_i_2_n_0 ),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[6]),
        .I3(\fifo[67][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[73][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo[74][3]_i_1 
       (.I0(\fifo[8][3]_i_2_n_0 ),
        .I1(\fifo[74][3]_i_2_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[74][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[74][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo[74][3]_i_2 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[1]),
        .O(\fifo[74][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[74][3]_i_3 
       (.I0(fifo_head_reg[5]),
        .I1(fifo_head_reg[2]),
        .O(\fifo[74][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[75][3]_i_1 
       (.I0(\fifo[75][3]_i_2_n_0 ),
        .I1(\fifo[39][3]_i_3_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[75][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[75][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo[75][3]_i_2 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[3]),
        .O(\fifo[75][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fifo[75][3]_i_3 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[4]),
        .O(\fifo[75][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo[76][3]_i_1 
       (.I0(\fifo[8][3]_i_2_n_0 ),
        .I1(\fifo[69][3]_i_2_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[68][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[76][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \fifo[77][3]_i_1 
       (.I0(\fifo[71][3]_i_2_n_0 ),
        .I1(\fifo[29][3]_i_2_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[9][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[77][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \fifo[78][3]_i_1 
       (.I0(\fifo[71][3]_i_2_n_0 ),
        .I1(\fifo[11][3]_i_2_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[8][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[78][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[79][3]_i_1 
       (.I0(\fifo[15][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[4]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[79][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[7][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo[80][3]_i_1 
       (.I0(\fifo[16][3]_i_2_n_0 ),
        .I1(\fifo[72][3]_i_2_n_0 ),
        .I2(fifo_head_reg[4]),
        .I3(\fifo[68][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[80][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[81][3]_i_1 
       (.I0(\fifo[17][3]_i_2_n_0 ),
        .I1(fifo_head_reg[4]),
        .I2(fifo_head_reg[6]),
        .I3(\fifo[67][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[81][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[82][3]_i_1 
       (.I0(\fifo[16][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[6]),
        .I3(\fifo[82][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[82][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[82][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[5]),
        .O(\fifo[82][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[83][3]_i_1 
       (.I0(\fifo[83][3]_i_2_n_0 ),
        .I1(\fifo[39][3]_i_3_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[83][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[83][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo[83][3]_i_2 
       (.I0(fifo_head_reg[6]),
        .I1(fifo_head_reg[4]),
        .O(\fifo[83][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fifo[83][3]_i_3 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[2]),
        .O(\fifo[83][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo[84][3]_i_1 
       (.I0(\fifo[16][3]_i_2_n_0 ),
        .I1(\fifo[69][3]_i_2_n_0 ),
        .I2(fifo_head_reg[4]),
        .I3(\fifo[68][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[84][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \fifo[85][3]_i_1 
       (.I0(\fifo[71][3]_i_2_n_0 ),
        .I1(\fifo[53][3]_i_2_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[17][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[85][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \fifo[86][3]_i_1 
       (.I0(\fifo[71][3]_i_2_n_0 ),
        .I1(\fifo[19][3]_i_2_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[16][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[86][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[87][3]_i_1 
       (.I0(\fifo[23][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[3]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[87][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \fifo[88][3]_i_1 
       (.I0(\fifo[0][3]_i_2_n_0 ),
        .I1(fifo_head_reg[3]),
        .I2(fifo_head_reg[6]),
        .I3(\fifo[82][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[88][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \fifo[89][3]_i_1 
       (.I0(\fifo[75][3]_i_2_n_0 ),
        .I1(\fifo[53][3]_i_2_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[16][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[89][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[8][3]_i_1 
       (.I0(\fifo[8][3]_i_2_n_0 ),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[2]),
        .I3(\fifo[8][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[8][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[8][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[0]),
        .O(\fifo[8][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \fifo[8][3]_i_3 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[5]),
        .O(\fifo[8][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[90][3]_i_1 
       (.I0(\fifo[75][3]_i_2_n_0 ),
        .I1(\fifo[19][3]_i_2_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[90][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[90][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fifo[90][3]_i_2 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[0]),
        .O(\fifo[90][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[91][3]_i_1 
       (.I0(\fifo[59][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[2]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[91][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \fifo[92][3]_i_1 
       (.I0(\fifo[71][3]_i_2_n_0 ),
        .I1(\fifo[60][3]_i_2_n_0 ),
        .I2(fifo_head_reg[5]),
        .I3(\fifo[0][3]_i_2_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[92][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[93][3]_i_1 
       (.I0(\fifo[61][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[1]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[93][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \fifo[94][3]_i_1 
       (.I0(\fifo[62][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[0]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[94][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \fifo[95][3]_i_1 
       (.I0(\fifo[15][3]_i_2_n_0 ),
        .I1(fifo_head_reg[5]),
        .I2(fifo_head_reg[6]),
        .I3(fifo_head_reg[4]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[95][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[96][3]_i_1 
       (.I0(\fifo[33][3]_i_2_n_0 ),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[1]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[96][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \fifo[97][3]_i_1 
       (.I0(\fifo[1][3]_i_2_n_0 ),
        .I1(\fifo[97][3]_i_2_n_0 ),
        .I2(fifo_head_reg[0]),
        .I3(\fifo[16][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[97][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fifo[97][3]_i_2 
       (.I0(fifo_head_reg[5]),
        .I1(fifo_head_reg[6]),
        .O(\fifo[97][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \fifo[98][3]_i_1 
       (.I0(\fifo[35][3]_i_2_n_0 ),
        .I1(fifo_head_reg[6]),
        .I2(fifo_head_reg[2]),
        .I3(fifo_head_reg[0]),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[98][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \fifo[99][3]_i_1 
       (.I0(\fifo[97][3]_i_2_n_0 ),
        .I1(\fifo[39][3]_i_3_n_0 ),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[75][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[99][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \fifo[9][3]_i_1 
       (.I0(\fifo[9][3]_i_2_n_0 ),
        .I1(fifo_head_reg[2]),
        .I2(fifo_head_reg[3]),
        .I3(\fifo[1][3]_i_3_n_0 ),
        .I4(S_AXI_ARESETN),
        .I5(prev_reg_wrdout0),
        .O(\fifo[9][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo[9][3]_i_2 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[1]),
        .O(\fifo[9][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \fifo_count[0]_i_1 
       (.I0(\fifo_count_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(fifo_count[0]));
  LUT6 #(
    .INIT(64'h0FFFFFFD00000002)) 
    \fifo_count[1]_i_1 
       (.I0(fifo_tail0__18),
        .I1(ConfigClk_reg_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\fifo_count[1]_i_2_n_0 ),
        .O(fifo_count[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_count[1]_i_2 
       (.I0(\fifo_count_reg_n_0_[0] ),
        .I1(\fifo_count_reg_n_0_[1] ),
        .O(\fifo_count[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h3FFE0002)) 
    \fifo_count[2]_i_1 
       (.I0(\fifo_count[2]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\fifo_count[2]_i_3_n_0 ),
        .O(fifo_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h4FFBB004)) 
    \fifo_count[2]_i_2 
       (.I0(ConfigClk_reg_0),
        .I1(fifo_tail0__18),
        .I2(\fifo_count_reg_n_0_[0] ),
        .I3(\fifo_count_reg_n_0_[1] ),
        .I4(\fifo_count_reg_n_0_[2] ),
        .O(\fifo_count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_count[2]_i_3 
       (.I0(\fifo_count_reg_n_0_[0] ),
        .I1(\fifo_count_reg_n_0_[1] ),
        .I2(\fifo_count_reg_n_0_[2] ),
        .O(\fifo_count[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h3FFE0002)) 
    \fifo_count[3]_i_1 
       (.I0(\fifo_count[3]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\fifo_count[3]_i_3_n_0 ),
        .O(fifo_count[3]));
  LUT6 #(
    .INIT(64'h4FFFFFFBB0000004)) 
    \fifo_count[3]_i_2 
       (.I0(ConfigClk_reg_0),
        .I1(fifo_tail0__18),
        .I2(\fifo_count_reg_n_0_[1] ),
        .I3(\fifo_count_reg_n_0_[0] ),
        .I4(\fifo_count_reg_n_0_[2] ),
        .I5(\fifo_count_reg_n_0_[3] ),
        .O(\fifo_count[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fifo_count[3]_i_3 
       (.I0(\fifo_count_reg_n_0_[1] ),
        .I1(\fifo_count_reg_n_0_[0] ),
        .I2(\fifo_count_reg_n_0_[2] ),
        .I3(\fifo_count_reg_n_0_[3] ),
        .O(\fifo_count[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFFE00000002)) 
    \fifo_count[4]_i_1 
       (.I0(\fifo_count[4]_i_2_n_0 ),
        .I1(ConfigClk_reg_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\fifo_count[4]_i_3_n_0 ),
        .O(fifo_count[4]));
  LUT6 #(
    .INIT(64'hBFFFFFFD40000002)) 
    \fifo_count[4]_i_2 
       (.I0(fifo_tail0__18),
        .I1(\fifo_count_reg_n_0_[2] ),
        .I2(\fifo_count_reg_n_0_[0] ),
        .I3(\fifo_count_reg_n_0_[1] ),
        .I4(\fifo_count_reg_n_0_[3] ),
        .I5(\fifo_count_reg_n_0_[4] ),
        .O(\fifo_count[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \fifo_count[4]_i_3 
       (.I0(\fifo_count_reg_n_0_[2] ),
        .I1(\fifo_count_reg_n_0_[0] ),
        .I2(\fifo_count_reg_n_0_[1] ),
        .I3(\fifo_count_reg_n_0_[3] ),
        .I4(\fifo_count_reg_n_0_[4] ),
        .O(\fifo_count[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h3FFE0002)) 
    \fifo_count[5]_i_1 
       (.I0(\fifo_count[5]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\fifo_count[5]_i_3_n_0 ),
        .O(fifo_count[5]));
  LUT5 #(
    .INIT(32'hEBFF4100)) 
    \fifo_count[5]_i_2 
       (.I0(ConfigClk_reg_0),
        .I1(\fifo_count[6]_i_5_n_0 ),
        .I2(\fifo_count_reg_n_0_[5] ),
        .I3(fifo_tail0__18),
        .I4(\fifo_count[5]_i_3_n_0 ),
        .O(\fifo_count[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \fifo_count[5]_i_3 
       (.I0(\fifo_count_reg_n_0_[3] ),
        .I1(\fifo_count_reg_n_0_[1] ),
        .I2(\fifo_count_reg_n_0_[0] ),
        .I3(\fifo_count_reg_n_0_[2] ),
        .I4(\fifo_count_reg_n_0_[4] ),
        .I5(\fifo_count_reg_n_0_[5] ),
        .O(\fifo_count[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFFF00000002)) 
    \fifo_count[6]_i_1 
       (.I0(fifo_tail0__18),
        .I1(ConfigClk_reg_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(prev_reg_wrdout0),
        .O(\fifo_count[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3FFE0002)) 
    \fifo_count[6]_i_2 
       (.I0(\fifo_count[6]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\fifo_count[6]_i_4_n_0 ),
        .O(fifo_count[6]));
  LUT6 #(
    .INIT(64'hFEABFFFF54010000)) 
    \fifo_count[6]_i_3 
       (.I0(ConfigClk_reg_0),
        .I1(\fifo_count_reg_n_0_[5] ),
        .I2(\fifo_count[6]_i_5_n_0 ),
        .I3(\fifo_count_reg_n_0_[6] ),
        .I4(fifo_tail0__18),
        .I5(\fifo_count[6]_i_4_n_0 ),
        .O(\fifo_count[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_count[6]_i_4 
       (.I0(\fifo_count[6]_i_6_n_0 ),
        .I1(\fifo_count_reg_n_0_[5] ),
        .I2(\fifo_count_reg_n_0_[6] ),
        .O(\fifo_count[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \fifo_count[6]_i_5 
       (.I0(\fifo_count_reg_n_0_[3] ),
        .I1(\fifo_count_reg_n_0_[1] ),
        .I2(\fifo_count_reg_n_0_[0] ),
        .I3(\fifo_count_reg_n_0_[2] ),
        .I4(\fifo_count_reg_n_0_[4] ),
        .O(\fifo_count[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \fifo_count[6]_i_6 
       (.I0(\fifo_count_reg_n_0_[4] ),
        .I1(\fifo_count_reg_n_0_[2] ),
        .I2(\fifo_count_reg_n_0_[0] ),
        .I3(\fifo_count_reg_n_0_[1] ),
        .I4(\fifo_count_reg_n_0_[3] ),
        .O(\fifo_count[6]_i_6_n_0 ));
  FDCE \fifo_count_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_count[6]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(fifo_count[0]),
        .Q(\fifo_count_reg_n_0_[0] ));
  FDCE \fifo_count_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_count[6]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(fifo_count[1]),
        .Q(\fifo_count_reg_n_0_[1] ));
  FDCE \fifo_count_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_count[6]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(fifo_count[2]),
        .Q(\fifo_count_reg_n_0_[2] ));
  FDCE \fifo_count_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_count[6]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(fifo_count[3]),
        .Q(\fifo_count_reg_n_0_[3] ));
  FDCE \fifo_count_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_count[6]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(fifo_count[4]),
        .Q(\fifo_count_reg_n_0_[4] ));
  FDCE \fifo_count_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_count[6]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(fifo_count[5]),
        .Q(\fifo_count_reg_n_0_[5] ));
  FDCE \fifo_count_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_count[6]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(fifo_count[6]),
        .Q(\fifo_count_reg_n_0_[6] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_1 
       (.I0(\fifo_data[0]_i_2_n_0 ),
        .I1(\fifo_data[0]_i_3_n_0 ),
        .I2(\fifo_data[3]_i_5_n_0 ),
        .I3(\fifo_data_reg[0]_i_4_n_0 ),
        .I4(\fifo_data[3]_i_7_n_0 ),
        .I5(\fifo_data_reg[0]_i_5_n_0 ),
        .O(\fifo_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_2 
       (.I0(\fifo_data_reg[0]_i_6_n_0 ),
        .I1(\fifo_data_reg[0]_i_7_n_0 ),
        .I2(fifo_tail_reg[5]),
        .I3(\fifo_data_reg[0]_i_8_n_0 ),
        .I4(fifo_tail_reg[4]),
        .I5(\fifo_data_reg[0]_i_9_n_0 ),
        .O(\fifo_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_22 
       (.I0(\fifo_reg[83]_83 [0]),
        .I1(\fifo_reg[82]_82 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[81]_81 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[80]_80 [0]),
        .O(\fifo_data[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_23 
       (.I0(\fifo_reg[87]_87 [0]),
        .I1(\fifo_reg[86]_86 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[85]_85 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[84]_84 [0]),
        .O(\fifo_data[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_24 
       (.I0(\fifo_reg[91]_91 [0]),
        .I1(\fifo_reg[90]_90 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[89]_89 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[88]_88 [0]),
        .O(\fifo_data[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_25 
       (.I0(\fifo_reg[95]_95 [0]),
        .I1(\fifo_reg[94]_94 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[93]_93 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[92]_92 [0]),
        .O(\fifo_data[0]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_26 
       (.I0(\fifo_reg[67]_67 [0]),
        .I1(\fifo_reg[66]_66 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[65]_65 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[64]_64 [0]),
        .O(\fifo_data[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_27 
       (.I0(\fifo_reg[71]_71 [0]),
        .I1(\fifo_reg[70]_70 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[69]_69 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[68]_68 [0]),
        .O(\fifo_data[0]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_28 
       (.I0(\fifo_reg[75]_75 [0]),
        .I1(\fifo_reg[74]_74 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[73]_73 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[72]_72 [0]),
        .O(\fifo_data[0]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_29 
       (.I0(\fifo_reg[79]_79 [0]),
        .I1(\fifo_reg[78]_78 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[77]_77 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[76]_76 [0]),
        .O(\fifo_data[0]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_3 
       (.I0(\fifo_reg[99]_99 [0]),
        .I1(\fifo_reg[98]_98 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[97]_97 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[96]_96 [0]),
        .O(\fifo_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_30 
       (.I0(\fifo_reg[51]_51 [0]),
        .I1(\fifo_reg[50]_50 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[49]_49 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[48]_48 [0]),
        .O(\fifo_data[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_31 
       (.I0(\fifo_reg[55]_55 [0]),
        .I1(\fifo_reg[54]_54 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[53]_53 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[52]_52 [0]),
        .O(\fifo_data[0]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_32 
       (.I0(\fifo_reg[59]_59 [0]),
        .I1(\fifo_reg[58]_58 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[57]_57 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[56]_56 [0]),
        .O(\fifo_data[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_33 
       (.I0(\fifo_reg[63]_63 [0]),
        .I1(\fifo_reg[62]_62 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[61]_61 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[60]_60 [0]),
        .O(\fifo_data[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_34 
       (.I0(\fifo_reg[35]_35 [0]),
        .I1(\fifo_reg[34]_34 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[33]_33 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[32]_32 [0]),
        .O(\fifo_data[0]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_35 
       (.I0(\fifo_reg[39]_39 [0]),
        .I1(\fifo_reg[38]_38 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[37]_37 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[36]_36 [0]),
        .O(\fifo_data[0]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_36 
       (.I0(\fifo_reg[43]_43 [0]),
        .I1(\fifo_reg[42]_42 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[41]_41 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[40]_40 [0]),
        .O(\fifo_data[0]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_37 
       (.I0(\fifo_reg[47]_47 [0]),
        .I1(\fifo_reg[46]_46 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[45]_45 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[44]_44 [0]),
        .O(\fifo_data[0]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_38 
       (.I0(\fifo_reg[19]_19 [0]),
        .I1(\fifo_reg[18]_18 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[17]_17 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[16]_16 [0]),
        .O(\fifo_data[0]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_39 
       (.I0(\fifo_reg[23]_23 [0]),
        .I1(\fifo_reg[22]_22 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[21]_21 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[20]_20 [0]),
        .O(\fifo_data[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_40 
       (.I0(\fifo_reg[27]_27 [0]),
        .I1(\fifo_reg[26]_26 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[25]_25 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[24]_24 [0]),
        .O(\fifo_data[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_41 
       (.I0(\fifo_reg[31]_31 [0]),
        .I1(\fifo_reg[30]_30 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[29]_29 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[28]_28 [0]),
        .O(\fifo_data[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_42 
       (.I0(\fifo_reg[3]_3 [0]),
        .I1(\fifo_reg[2]_2 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[1]_1 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[0]_0 [0]),
        .O(\fifo_data[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_43 
       (.I0(\fifo_reg[7]_7 [0]),
        .I1(\fifo_reg[6]_6 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[5]_5 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[4]_4 [0]),
        .O(\fifo_data[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_44 
       (.I0(\fifo_reg[11]_11 [0]),
        .I1(\fifo_reg[10]_10 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[9]_9 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[8]_8 [0]),
        .O(\fifo_data[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[0]_i_45 
       (.I0(\fifo_reg[15]_15 [0]),
        .I1(\fifo_reg[14]_14 [0]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[13]_13 [0]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[12]_12 [0]),
        .O(\fifo_data[0]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_1 
       (.I0(\fifo_data[1]_i_2_n_0 ),
        .I1(\fifo_data[1]_i_3_n_0 ),
        .I2(\fifo_data[3]_i_5_n_0 ),
        .I3(\fifo_data_reg[1]_i_4_n_0 ),
        .I4(\fifo_data[3]_i_7_n_0 ),
        .I5(\fifo_data_reg[1]_i_5_n_0 ),
        .O(\fifo_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_2 
       (.I0(\fifo_data_reg[1]_i_6_n_0 ),
        .I1(\fifo_data_reg[1]_i_7_n_0 ),
        .I2(fifo_tail_reg[5]),
        .I3(\fifo_data_reg[1]_i_8_n_0 ),
        .I4(fifo_tail_reg[4]),
        .I5(\fifo_data_reg[1]_i_9_n_0 ),
        .O(\fifo_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_22 
       (.I0(\fifo_reg[83]_83 [1]),
        .I1(\fifo_reg[82]_82 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[81]_81 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[80]_80 [1]),
        .O(\fifo_data[1]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_23 
       (.I0(\fifo_reg[87]_87 [1]),
        .I1(\fifo_reg[86]_86 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[85]_85 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[84]_84 [1]),
        .O(\fifo_data[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_24 
       (.I0(\fifo_reg[91]_91 [1]),
        .I1(\fifo_reg[90]_90 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[89]_89 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[88]_88 [1]),
        .O(\fifo_data[1]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_25 
       (.I0(\fifo_reg[95]_95 [1]),
        .I1(\fifo_reg[94]_94 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[93]_93 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[92]_92 [1]),
        .O(\fifo_data[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_26 
       (.I0(\fifo_reg[67]_67 [1]),
        .I1(\fifo_reg[66]_66 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[65]_65 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[64]_64 [1]),
        .O(\fifo_data[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_27 
       (.I0(\fifo_reg[71]_71 [1]),
        .I1(\fifo_reg[70]_70 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[69]_69 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[68]_68 [1]),
        .O(\fifo_data[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_28 
       (.I0(\fifo_reg[75]_75 [1]),
        .I1(\fifo_reg[74]_74 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[73]_73 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[72]_72 [1]),
        .O(\fifo_data[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_29 
       (.I0(\fifo_reg[79]_79 [1]),
        .I1(\fifo_reg[78]_78 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[77]_77 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[76]_76 [1]),
        .O(\fifo_data[1]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_3 
       (.I0(\fifo_reg[99]_99 [1]),
        .I1(\fifo_reg[98]_98 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[97]_97 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[96]_96 [1]),
        .O(\fifo_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_30 
       (.I0(\fifo_reg[51]_51 [1]),
        .I1(\fifo_reg[50]_50 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[49]_49 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[48]_48 [1]),
        .O(\fifo_data[1]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_31 
       (.I0(\fifo_reg[55]_55 [1]),
        .I1(\fifo_reg[54]_54 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[53]_53 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[52]_52 [1]),
        .O(\fifo_data[1]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_32 
       (.I0(\fifo_reg[59]_59 [1]),
        .I1(\fifo_reg[58]_58 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[57]_57 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[56]_56 [1]),
        .O(\fifo_data[1]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_33 
       (.I0(\fifo_reg[63]_63 [1]),
        .I1(\fifo_reg[62]_62 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[61]_61 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[60]_60 [1]),
        .O(\fifo_data[1]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_34 
       (.I0(\fifo_reg[35]_35 [1]),
        .I1(\fifo_reg[34]_34 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[33]_33 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[32]_32 [1]),
        .O(\fifo_data[1]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_35 
       (.I0(\fifo_reg[39]_39 [1]),
        .I1(\fifo_reg[38]_38 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[37]_37 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[36]_36 [1]),
        .O(\fifo_data[1]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_36 
       (.I0(\fifo_reg[43]_43 [1]),
        .I1(\fifo_reg[42]_42 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[41]_41 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[40]_40 [1]),
        .O(\fifo_data[1]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_37 
       (.I0(\fifo_reg[47]_47 [1]),
        .I1(\fifo_reg[46]_46 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[45]_45 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[44]_44 [1]),
        .O(\fifo_data[1]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_38 
       (.I0(\fifo_reg[19]_19 [1]),
        .I1(\fifo_reg[18]_18 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[17]_17 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[16]_16 [1]),
        .O(\fifo_data[1]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_39 
       (.I0(\fifo_reg[23]_23 [1]),
        .I1(\fifo_reg[22]_22 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[21]_21 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[20]_20 [1]),
        .O(\fifo_data[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_40 
       (.I0(\fifo_reg[27]_27 [1]),
        .I1(\fifo_reg[26]_26 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[25]_25 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[24]_24 [1]),
        .O(\fifo_data[1]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_41 
       (.I0(\fifo_reg[31]_31 [1]),
        .I1(\fifo_reg[30]_30 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[29]_29 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[28]_28 [1]),
        .O(\fifo_data[1]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_42 
       (.I0(\fifo_reg[3]_3 [1]),
        .I1(\fifo_reg[2]_2 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[1]_1 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[0]_0 [1]),
        .O(\fifo_data[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_43 
       (.I0(\fifo_reg[7]_7 [1]),
        .I1(\fifo_reg[6]_6 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[5]_5 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[4]_4 [1]),
        .O(\fifo_data[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_44 
       (.I0(\fifo_reg[11]_11 [1]),
        .I1(\fifo_reg[10]_10 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[9]_9 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[8]_8 [1]),
        .O(\fifo_data[1]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[1]_i_45 
       (.I0(\fifo_reg[15]_15 [1]),
        .I1(\fifo_reg[14]_14 [1]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[13]_13 [1]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[12]_12 [1]),
        .O(\fifo_data[1]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_1 
       (.I0(\fifo_data[2]_i_2_n_0 ),
        .I1(\fifo_data[2]_i_3_n_0 ),
        .I2(\fifo_data[3]_i_5_n_0 ),
        .I3(\fifo_data_reg[2]_i_4_n_0 ),
        .I4(\fifo_data[3]_i_7_n_0 ),
        .I5(\fifo_data_reg[2]_i_5_n_0 ),
        .O(\fifo_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_2 
       (.I0(\fifo_data_reg[2]_i_6_n_0 ),
        .I1(\fifo_data_reg[2]_i_7_n_0 ),
        .I2(fifo_tail_reg[5]),
        .I3(\fifo_data_reg[2]_i_8_n_0 ),
        .I4(fifo_tail_reg[4]),
        .I5(\fifo_data_reg[2]_i_9_n_0 ),
        .O(\fifo_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_22 
       (.I0(\fifo_reg[83]_83 [2]),
        .I1(\fifo_reg[82]_82 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[81]_81 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[80]_80 [2]),
        .O(\fifo_data[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_23 
       (.I0(\fifo_reg[87]_87 [2]),
        .I1(\fifo_reg[86]_86 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[85]_85 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[84]_84 [2]),
        .O(\fifo_data[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_24 
       (.I0(\fifo_reg[91]_91 [2]),
        .I1(\fifo_reg[90]_90 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[89]_89 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[88]_88 [2]),
        .O(\fifo_data[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_25 
       (.I0(\fifo_reg[95]_95 [2]),
        .I1(\fifo_reg[94]_94 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[93]_93 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[92]_92 [2]),
        .O(\fifo_data[2]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_26 
       (.I0(\fifo_reg[67]_67 [2]),
        .I1(\fifo_reg[66]_66 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[65]_65 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[64]_64 [2]),
        .O(\fifo_data[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_27 
       (.I0(\fifo_reg[71]_71 [2]),
        .I1(\fifo_reg[70]_70 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[69]_69 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[68]_68 [2]),
        .O(\fifo_data[2]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_28 
       (.I0(\fifo_reg[75]_75 [2]),
        .I1(\fifo_reg[74]_74 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[73]_73 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[72]_72 [2]),
        .O(\fifo_data[2]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_29 
       (.I0(\fifo_reg[79]_79 [2]),
        .I1(\fifo_reg[78]_78 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[77]_77 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[76]_76 [2]),
        .O(\fifo_data[2]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_3 
       (.I0(\fifo_reg[99]_99 [2]),
        .I1(\fifo_reg[98]_98 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[97]_97 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[96]_96 [2]),
        .O(\fifo_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_30 
       (.I0(\fifo_reg[51]_51 [2]),
        .I1(\fifo_reg[50]_50 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[49]_49 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[48]_48 [2]),
        .O(\fifo_data[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_31 
       (.I0(\fifo_reg[55]_55 [2]),
        .I1(\fifo_reg[54]_54 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[53]_53 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[52]_52 [2]),
        .O(\fifo_data[2]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_32 
       (.I0(\fifo_reg[59]_59 [2]),
        .I1(\fifo_reg[58]_58 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[57]_57 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[56]_56 [2]),
        .O(\fifo_data[2]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_33 
       (.I0(\fifo_reg[63]_63 [2]),
        .I1(\fifo_reg[62]_62 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[61]_61 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[60]_60 [2]),
        .O(\fifo_data[2]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_34 
       (.I0(\fifo_reg[35]_35 [2]),
        .I1(\fifo_reg[34]_34 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[33]_33 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[32]_32 [2]),
        .O(\fifo_data[2]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_35 
       (.I0(\fifo_reg[39]_39 [2]),
        .I1(\fifo_reg[38]_38 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[37]_37 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[36]_36 [2]),
        .O(\fifo_data[2]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_36 
       (.I0(\fifo_reg[43]_43 [2]),
        .I1(\fifo_reg[42]_42 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[41]_41 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[40]_40 [2]),
        .O(\fifo_data[2]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_37 
       (.I0(\fifo_reg[47]_47 [2]),
        .I1(\fifo_reg[46]_46 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[45]_45 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[44]_44 [2]),
        .O(\fifo_data[2]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_38 
       (.I0(\fifo_reg[19]_19 [2]),
        .I1(\fifo_reg[18]_18 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[17]_17 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[16]_16 [2]),
        .O(\fifo_data[2]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_39 
       (.I0(\fifo_reg[23]_23 [2]),
        .I1(\fifo_reg[22]_22 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[21]_21 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[20]_20 [2]),
        .O(\fifo_data[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_40 
       (.I0(\fifo_reg[27]_27 [2]),
        .I1(\fifo_reg[26]_26 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[25]_25 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[24]_24 [2]),
        .O(\fifo_data[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_41 
       (.I0(\fifo_reg[31]_31 [2]),
        .I1(\fifo_reg[30]_30 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[29]_29 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[28]_28 [2]),
        .O(\fifo_data[2]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_42 
       (.I0(\fifo_reg[3]_3 [2]),
        .I1(\fifo_reg[2]_2 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[1]_1 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[0]_0 [2]),
        .O(\fifo_data[2]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_43 
       (.I0(\fifo_reg[7]_7 [2]),
        .I1(\fifo_reg[6]_6 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[5]_5 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[4]_4 [2]),
        .O(\fifo_data[2]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_44 
       (.I0(\fifo_reg[11]_11 [2]),
        .I1(\fifo_reg[10]_10 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[9]_9 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[8]_8 [2]),
        .O(\fifo_data[2]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[2]_i_45 
       (.I0(\fifo_reg[15]_15 [2]),
        .I1(\fifo_reg[14]_14 [2]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[13]_13 [2]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[12]_12 [2]),
        .O(\fifo_data[2]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \fifo_data[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(fifo_tail0__18),
        .I3(ConfigClk_reg_0),
        .I4(Q[1]),
        .O(\fifo_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_2 
       (.I0(\fifo_data[3]_i_3_n_0 ),
        .I1(\fifo_data[3]_i_4_n_0 ),
        .I2(\fifo_data[3]_i_5_n_0 ),
        .I3(\fifo_data_reg[3]_i_6_n_0 ),
        .I4(\fifo_data[3]_i_7_n_0 ),
        .I5(\fifo_data_reg[3]_i_8_n_0 ),
        .O(\fifo_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_25 
       (.I0(\fifo_reg[83]_83 [3]),
        .I1(\fifo_reg[82]_82 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[81]_81 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[80]_80 [3]),
        .O(\fifo_data[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_26 
       (.I0(\fifo_reg[87]_87 [3]),
        .I1(\fifo_reg[86]_86 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[85]_85 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[84]_84 [3]),
        .O(\fifo_data[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_27 
       (.I0(\fifo_reg[91]_91 [3]),
        .I1(\fifo_reg[90]_90 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[89]_89 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[88]_88 [3]),
        .O(\fifo_data[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_28 
       (.I0(\fifo_reg[95]_95 [3]),
        .I1(\fifo_reg[94]_94 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[93]_93 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[92]_92 [3]),
        .O(\fifo_data[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_29 
       (.I0(\fifo_reg[67]_67 [3]),
        .I1(\fifo_reg[66]_66 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[65]_65 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[64]_64 [3]),
        .O(\fifo_data[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_3 
       (.I0(\fifo_data_reg[3]_i_9_n_0 ),
        .I1(\fifo_data_reg[3]_i_10_n_0 ),
        .I2(fifo_tail_reg[5]),
        .I3(\fifo_data_reg[3]_i_11_n_0 ),
        .I4(fifo_tail_reg[4]),
        .I5(\fifo_data_reg[3]_i_12_n_0 ),
        .O(\fifo_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_30 
       (.I0(\fifo_reg[71]_71 [3]),
        .I1(\fifo_reg[70]_70 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[69]_69 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[68]_68 [3]),
        .O(\fifo_data[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_31 
       (.I0(\fifo_reg[75]_75 [3]),
        .I1(\fifo_reg[74]_74 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[73]_73 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[72]_72 [3]),
        .O(\fifo_data[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_32 
       (.I0(\fifo_reg[79]_79 [3]),
        .I1(\fifo_reg[78]_78 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[77]_77 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[76]_76 [3]),
        .O(\fifo_data[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_33 
       (.I0(\fifo_reg[51]_51 [3]),
        .I1(\fifo_reg[50]_50 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[49]_49 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[48]_48 [3]),
        .O(\fifo_data[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_34 
       (.I0(\fifo_reg[55]_55 [3]),
        .I1(\fifo_reg[54]_54 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[53]_53 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[52]_52 [3]),
        .O(\fifo_data[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_35 
       (.I0(\fifo_reg[59]_59 [3]),
        .I1(\fifo_reg[58]_58 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[57]_57 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[56]_56 [3]),
        .O(\fifo_data[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_36 
       (.I0(\fifo_reg[63]_63 [3]),
        .I1(\fifo_reg[62]_62 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[61]_61 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[60]_60 [3]),
        .O(\fifo_data[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_37 
       (.I0(\fifo_reg[35]_35 [3]),
        .I1(\fifo_reg[34]_34 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[33]_33 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[32]_32 [3]),
        .O(\fifo_data[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_38 
       (.I0(\fifo_reg[39]_39 [3]),
        .I1(\fifo_reg[38]_38 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[37]_37 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[36]_36 [3]),
        .O(\fifo_data[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_39 
       (.I0(\fifo_reg[43]_43 [3]),
        .I1(\fifo_reg[42]_42 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[41]_41 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[40]_40 [3]),
        .O(\fifo_data[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_4 
       (.I0(\fifo_reg[99]_99 [3]),
        .I1(\fifo_reg[98]_98 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[97]_97 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[96]_96 [3]),
        .O(\fifo_data[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_40 
       (.I0(\fifo_reg[47]_47 [3]),
        .I1(\fifo_reg[46]_46 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[45]_45 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[44]_44 [3]),
        .O(\fifo_data[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_41 
       (.I0(\fifo_reg[19]_19 [3]),
        .I1(\fifo_reg[18]_18 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[17]_17 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[16]_16 [3]),
        .O(\fifo_data[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_42 
       (.I0(\fifo_reg[23]_23 [3]),
        .I1(\fifo_reg[22]_22 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[21]_21 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[20]_20 [3]),
        .O(\fifo_data[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_43 
       (.I0(\fifo_reg[27]_27 [3]),
        .I1(\fifo_reg[26]_26 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[25]_25 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[24]_24 [3]),
        .O(\fifo_data[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_44 
       (.I0(\fifo_reg[31]_31 [3]),
        .I1(\fifo_reg[30]_30 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[29]_29 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[28]_28 [3]),
        .O(\fifo_data[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_45 
       (.I0(\fifo_reg[3]_3 [3]),
        .I1(\fifo_reg[2]_2 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[1]_1 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[0]_0 [3]),
        .O(\fifo_data[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_46 
       (.I0(\fifo_reg[7]_7 [3]),
        .I1(\fifo_reg[6]_6 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[5]_5 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[4]_4 [3]),
        .O(\fifo_data[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_47 
       (.I0(\fifo_reg[11]_11 [3]),
        .I1(\fifo_reg[10]_10 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[9]_9 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[8]_8 [3]),
        .O(\fifo_data[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \fifo_data[3]_i_48 
       (.I0(\fifo_reg[15]_15 [3]),
        .I1(\fifo_reg[14]_14 [3]),
        .I2(fifo_tail_reg[1]),
        .I3(\fifo_reg[13]_13 [3]),
        .I4(fifo_tail_reg[0]),
        .I5(\fifo_reg[12]_12 [3]),
        .O(\fifo_data[3]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \fifo_data[3]_i_5 
       (.I0(fifo_tail_reg[5]),
        .I1(fifo_tail_reg[6]),
        .O(\fifo_data[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \fifo_data[3]_i_7 
       (.I0(fifo_tail_reg[6]),
        .I1(fifo_tail_reg[4]),
        .I2(fifo_tail_reg[5]),
        .O(\fifo_data[3]_i_7_n_0 ));
  FDCE \fifo_data_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(\fifo_data[0]_i_1_n_0 ),
        .Q(fifo_data[0]));
  MUXF7 \fifo_data_reg[0]_i_10 
       (.I0(\fifo_data[0]_i_22_n_0 ),
        .I1(\fifo_data[0]_i_23_n_0 ),
        .O(\fifo_data_reg[0]_i_10_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_11 
       (.I0(\fifo_data[0]_i_24_n_0 ),
        .I1(\fifo_data[0]_i_25_n_0 ),
        .O(\fifo_data_reg[0]_i_11_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_12 
       (.I0(\fifo_data[0]_i_26_n_0 ),
        .I1(\fifo_data[0]_i_27_n_0 ),
        .O(\fifo_data_reg[0]_i_12_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_13 
       (.I0(\fifo_data[0]_i_28_n_0 ),
        .I1(\fifo_data[0]_i_29_n_0 ),
        .O(\fifo_data_reg[0]_i_13_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_14 
       (.I0(\fifo_data[0]_i_30_n_0 ),
        .I1(\fifo_data[0]_i_31_n_0 ),
        .O(\fifo_data_reg[0]_i_14_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_15 
       (.I0(\fifo_data[0]_i_32_n_0 ),
        .I1(\fifo_data[0]_i_33_n_0 ),
        .O(\fifo_data_reg[0]_i_15_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_16 
       (.I0(\fifo_data[0]_i_34_n_0 ),
        .I1(\fifo_data[0]_i_35_n_0 ),
        .O(\fifo_data_reg[0]_i_16_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_17 
       (.I0(\fifo_data[0]_i_36_n_0 ),
        .I1(\fifo_data[0]_i_37_n_0 ),
        .O(\fifo_data_reg[0]_i_17_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_18 
       (.I0(\fifo_data[0]_i_38_n_0 ),
        .I1(\fifo_data[0]_i_39_n_0 ),
        .O(\fifo_data_reg[0]_i_18_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_19 
       (.I0(\fifo_data[0]_i_40_n_0 ),
        .I1(\fifo_data[0]_i_41_n_0 ),
        .O(\fifo_data_reg[0]_i_19_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_20 
       (.I0(\fifo_data[0]_i_42_n_0 ),
        .I1(\fifo_data[0]_i_43_n_0 ),
        .O(\fifo_data_reg[0]_i_20_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[0]_i_21 
       (.I0(\fifo_data[0]_i_44_n_0 ),
        .I1(\fifo_data[0]_i_45_n_0 ),
        .O(\fifo_data_reg[0]_i_21_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF8 \fifo_data_reg[0]_i_4 
       (.I0(\fifo_data_reg[0]_i_10_n_0 ),
        .I1(\fifo_data_reg[0]_i_11_n_0 ),
        .O(\fifo_data_reg[0]_i_4_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[0]_i_5 
       (.I0(\fifo_data_reg[0]_i_12_n_0 ),
        .I1(\fifo_data_reg[0]_i_13_n_0 ),
        .O(\fifo_data_reg[0]_i_5_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[0]_i_6 
       (.I0(\fifo_data_reg[0]_i_14_n_0 ),
        .I1(\fifo_data_reg[0]_i_15_n_0 ),
        .O(\fifo_data_reg[0]_i_6_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[0]_i_7 
       (.I0(\fifo_data_reg[0]_i_16_n_0 ),
        .I1(\fifo_data_reg[0]_i_17_n_0 ),
        .O(\fifo_data_reg[0]_i_7_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[0]_i_8 
       (.I0(\fifo_data_reg[0]_i_18_n_0 ),
        .I1(\fifo_data_reg[0]_i_19_n_0 ),
        .O(\fifo_data_reg[0]_i_8_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[0]_i_9 
       (.I0(\fifo_data_reg[0]_i_20_n_0 ),
        .I1(\fifo_data_reg[0]_i_21_n_0 ),
        .O(\fifo_data_reg[0]_i_9_n_0 ),
        .S(fifo_tail_reg[3]));
  FDCE \fifo_data_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(\fifo_data[1]_i_1_n_0 ),
        .Q(fifo_data[1]));
  MUXF7 \fifo_data_reg[1]_i_10 
       (.I0(\fifo_data[1]_i_22_n_0 ),
        .I1(\fifo_data[1]_i_23_n_0 ),
        .O(\fifo_data_reg[1]_i_10_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_11 
       (.I0(\fifo_data[1]_i_24_n_0 ),
        .I1(\fifo_data[1]_i_25_n_0 ),
        .O(\fifo_data_reg[1]_i_11_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_12 
       (.I0(\fifo_data[1]_i_26_n_0 ),
        .I1(\fifo_data[1]_i_27_n_0 ),
        .O(\fifo_data_reg[1]_i_12_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_13 
       (.I0(\fifo_data[1]_i_28_n_0 ),
        .I1(\fifo_data[1]_i_29_n_0 ),
        .O(\fifo_data_reg[1]_i_13_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_14 
       (.I0(\fifo_data[1]_i_30_n_0 ),
        .I1(\fifo_data[1]_i_31_n_0 ),
        .O(\fifo_data_reg[1]_i_14_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_15 
       (.I0(\fifo_data[1]_i_32_n_0 ),
        .I1(\fifo_data[1]_i_33_n_0 ),
        .O(\fifo_data_reg[1]_i_15_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_16 
       (.I0(\fifo_data[1]_i_34_n_0 ),
        .I1(\fifo_data[1]_i_35_n_0 ),
        .O(\fifo_data_reg[1]_i_16_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_17 
       (.I0(\fifo_data[1]_i_36_n_0 ),
        .I1(\fifo_data[1]_i_37_n_0 ),
        .O(\fifo_data_reg[1]_i_17_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_18 
       (.I0(\fifo_data[1]_i_38_n_0 ),
        .I1(\fifo_data[1]_i_39_n_0 ),
        .O(\fifo_data_reg[1]_i_18_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_19 
       (.I0(\fifo_data[1]_i_40_n_0 ),
        .I1(\fifo_data[1]_i_41_n_0 ),
        .O(\fifo_data_reg[1]_i_19_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_20 
       (.I0(\fifo_data[1]_i_42_n_0 ),
        .I1(\fifo_data[1]_i_43_n_0 ),
        .O(\fifo_data_reg[1]_i_20_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[1]_i_21 
       (.I0(\fifo_data[1]_i_44_n_0 ),
        .I1(\fifo_data[1]_i_45_n_0 ),
        .O(\fifo_data_reg[1]_i_21_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF8 \fifo_data_reg[1]_i_4 
       (.I0(\fifo_data_reg[1]_i_10_n_0 ),
        .I1(\fifo_data_reg[1]_i_11_n_0 ),
        .O(\fifo_data_reg[1]_i_4_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[1]_i_5 
       (.I0(\fifo_data_reg[1]_i_12_n_0 ),
        .I1(\fifo_data_reg[1]_i_13_n_0 ),
        .O(\fifo_data_reg[1]_i_5_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[1]_i_6 
       (.I0(\fifo_data_reg[1]_i_14_n_0 ),
        .I1(\fifo_data_reg[1]_i_15_n_0 ),
        .O(\fifo_data_reg[1]_i_6_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[1]_i_7 
       (.I0(\fifo_data_reg[1]_i_16_n_0 ),
        .I1(\fifo_data_reg[1]_i_17_n_0 ),
        .O(\fifo_data_reg[1]_i_7_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[1]_i_8 
       (.I0(\fifo_data_reg[1]_i_18_n_0 ),
        .I1(\fifo_data_reg[1]_i_19_n_0 ),
        .O(\fifo_data_reg[1]_i_8_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[1]_i_9 
       (.I0(\fifo_data_reg[1]_i_20_n_0 ),
        .I1(\fifo_data_reg[1]_i_21_n_0 ),
        .O(\fifo_data_reg[1]_i_9_n_0 ),
        .S(fifo_tail_reg[3]));
  FDCE \fifo_data_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(\fifo_data[2]_i_1_n_0 ),
        .Q(fifo_data[2]));
  MUXF7 \fifo_data_reg[2]_i_10 
       (.I0(\fifo_data[2]_i_22_n_0 ),
        .I1(\fifo_data[2]_i_23_n_0 ),
        .O(\fifo_data_reg[2]_i_10_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_11 
       (.I0(\fifo_data[2]_i_24_n_0 ),
        .I1(\fifo_data[2]_i_25_n_0 ),
        .O(\fifo_data_reg[2]_i_11_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_12 
       (.I0(\fifo_data[2]_i_26_n_0 ),
        .I1(\fifo_data[2]_i_27_n_0 ),
        .O(\fifo_data_reg[2]_i_12_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_13 
       (.I0(\fifo_data[2]_i_28_n_0 ),
        .I1(\fifo_data[2]_i_29_n_0 ),
        .O(\fifo_data_reg[2]_i_13_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_14 
       (.I0(\fifo_data[2]_i_30_n_0 ),
        .I1(\fifo_data[2]_i_31_n_0 ),
        .O(\fifo_data_reg[2]_i_14_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_15 
       (.I0(\fifo_data[2]_i_32_n_0 ),
        .I1(\fifo_data[2]_i_33_n_0 ),
        .O(\fifo_data_reg[2]_i_15_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_16 
       (.I0(\fifo_data[2]_i_34_n_0 ),
        .I1(\fifo_data[2]_i_35_n_0 ),
        .O(\fifo_data_reg[2]_i_16_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_17 
       (.I0(\fifo_data[2]_i_36_n_0 ),
        .I1(\fifo_data[2]_i_37_n_0 ),
        .O(\fifo_data_reg[2]_i_17_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_18 
       (.I0(\fifo_data[2]_i_38_n_0 ),
        .I1(\fifo_data[2]_i_39_n_0 ),
        .O(\fifo_data_reg[2]_i_18_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_19 
       (.I0(\fifo_data[2]_i_40_n_0 ),
        .I1(\fifo_data[2]_i_41_n_0 ),
        .O(\fifo_data_reg[2]_i_19_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_20 
       (.I0(\fifo_data[2]_i_42_n_0 ),
        .I1(\fifo_data[2]_i_43_n_0 ),
        .O(\fifo_data_reg[2]_i_20_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[2]_i_21 
       (.I0(\fifo_data[2]_i_44_n_0 ),
        .I1(\fifo_data[2]_i_45_n_0 ),
        .O(\fifo_data_reg[2]_i_21_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF8 \fifo_data_reg[2]_i_4 
       (.I0(\fifo_data_reg[2]_i_10_n_0 ),
        .I1(\fifo_data_reg[2]_i_11_n_0 ),
        .O(\fifo_data_reg[2]_i_4_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[2]_i_5 
       (.I0(\fifo_data_reg[2]_i_12_n_0 ),
        .I1(\fifo_data_reg[2]_i_13_n_0 ),
        .O(\fifo_data_reg[2]_i_5_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[2]_i_6 
       (.I0(\fifo_data_reg[2]_i_14_n_0 ),
        .I1(\fifo_data_reg[2]_i_15_n_0 ),
        .O(\fifo_data_reg[2]_i_6_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[2]_i_7 
       (.I0(\fifo_data_reg[2]_i_16_n_0 ),
        .I1(\fifo_data_reg[2]_i_17_n_0 ),
        .O(\fifo_data_reg[2]_i_7_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[2]_i_8 
       (.I0(\fifo_data_reg[2]_i_18_n_0 ),
        .I1(\fifo_data_reg[2]_i_19_n_0 ),
        .O(\fifo_data_reg[2]_i_8_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[2]_i_9 
       (.I0(\fifo_data_reg[2]_i_20_n_0 ),
        .I1(\fifo_data_reg[2]_i_21_n_0 ),
        .O(\fifo_data_reg[2]_i_9_n_0 ),
        .S(fifo_tail_reg[3]));
  FDCE \fifo_data_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(\fifo_data[3]_i_2_n_0 ),
        .Q(fifo_data[3]));
  MUXF8 \fifo_data_reg[3]_i_10 
       (.I0(\fifo_data_reg[3]_i_19_n_0 ),
        .I1(\fifo_data_reg[3]_i_20_n_0 ),
        .O(\fifo_data_reg[3]_i_10_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[3]_i_11 
       (.I0(\fifo_data_reg[3]_i_21_n_0 ),
        .I1(\fifo_data_reg[3]_i_22_n_0 ),
        .O(\fifo_data_reg[3]_i_11_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[3]_i_12 
       (.I0(\fifo_data_reg[3]_i_23_n_0 ),
        .I1(\fifo_data_reg[3]_i_24_n_0 ),
        .O(\fifo_data_reg[3]_i_12_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF7 \fifo_data_reg[3]_i_13 
       (.I0(\fifo_data[3]_i_25_n_0 ),
        .I1(\fifo_data[3]_i_26_n_0 ),
        .O(\fifo_data_reg[3]_i_13_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_14 
       (.I0(\fifo_data[3]_i_27_n_0 ),
        .I1(\fifo_data[3]_i_28_n_0 ),
        .O(\fifo_data_reg[3]_i_14_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_15 
       (.I0(\fifo_data[3]_i_29_n_0 ),
        .I1(\fifo_data[3]_i_30_n_0 ),
        .O(\fifo_data_reg[3]_i_15_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_16 
       (.I0(\fifo_data[3]_i_31_n_0 ),
        .I1(\fifo_data[3]_i_32_n_0 ),
        .O(\fifo_data_reg[3]_i_16_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_17 
       (.I0(\fifo_data[3]_i_33_n_0 ),
        .I1(\fifo_data[3]_i_34_n_0 ),
        .O(\fifo_data_reg[3]_i_17_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_18 
       (.I0(\fifo_data[3]_i_35_n_0 ),
        .I1(\fifo_data[3]_i_36_n_0 ),
        .O(\fifo_data_reg[3]_i_18_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_19 
       (.I0(\fifo_data[3]_i_37_n_0 ),
        .I1(\fifo_data[3]_i_38_n_0 ),
        .O(\fifo_data_reg[3]_i_19_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_20 
       (.I0(\fifo_data[3]_i_39_n_0 ),
        .I1(\fifo_data[3]_i_40_n_0 ),
        .O(\fifo_data_reg[3]_i_20_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_21 
       (.I0(\fifo_data[3]_i_41_n_0 ),
        .I1(\fifo_data[3]_i_42_n_0 ),
        .O(\fifo_data_reg[3]_i_21_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_22 
       (.I0(\fifo_data[3]_i_43_n_0 ),
        .I1(\fifo_data[3]_i_44_n_0 ),
        .O(\fifo_data_reg[3]_i_22_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_23 
       (.I0(\fifo_data[3]_i_45_n_0 ),
        .I1(\fifo_data[3]_i_46_n_0 ),
        .O(\fifo_data_reg[3]_i_23_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF7 \fifo_data_reg[3]_i_24 
       (.I0(\fifo_data[3]_i_47_n_0 ),
        .I1(\fifo_data[3]_i_48_n_0 ),
        .O(\fifo_data_reg[3]_i_24_n_0 ),
        .S(fifo_tail_reg[2]));
  MUXF8 \fifo_data_reg[3]_i_6 
       (.I0(\fifo_data_reg[3]_i_13_n_0 ),
        .I1(\fifo_data_reg[3]_i_14_n_0 ),
        .O(\fifo_data_reg[3]_i_6_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[3]_i_8 
       (.I0(\fifo_data_reg[3]_i_15_n_0 ),
        .I1(\fifo_data_reg[3]_i_16_n_0 ),
        .O(\fifo_data_reg[3]_i_8_n_0 ),
        .S(fifo_tail_reg[3]));
  MUXF8 \fifo_data_reg[3]_i_9 
       (.I0(\fifo_data_reg[3]_i_17_n_0 ),
        .I1(\fifo_data_reg[3]_i_18_n_0 ),
        .O(\fifo_data_reg[3]_i_9_n_0 ),
        .S(fifo_tail_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_head[0]_i_1 
       (.I0(fifo_head_reg[0]),
        .O(\fifo_head[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_head[1]_i_1 
       (.I0(fifo_head_reg[0]),
        .I1(fifo_head_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_head[2]_i_1 
       (.I0(fifo_head_reg[0]),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[2]),
        .O(\fifo_head[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fifo_head[3]_i_1 
       (.I0(fifo_head_reg[1]),
        .I1(fifo_head_reg[0]),
        .I2(fifo_head_reg[2]),
        .I3(fifo_head_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \fifo_head[4]_i_1 
       (.I0(fifo_head_reg[2]),
        .I1(fifo_head_reg[0]),
        .I2(fifo_head_reg[1]),
        .I3(fifo_head_reg[3]),
        .I4(fifo_head_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \fifo_head[5]_i_1 
       (.I0(fifo_head_reg[3]),
        .I1(fifo_head_reg[1]),
        .I2(fifo_head_reg[0]),
        .I3(fifo_head_reg[2]),
        .I4(fifo_head_reg[4]),
        .I5(fifo_head_reg[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \fifo_head[6]_i_1 
       (.I0(fifo_head_reg[4]),
        .I1(fifo_head_reg[2]),
        .I2(\fifo[39][3]_i_3_n_0 ),
        .I3(fifo_head_reg[3]),
        .I4(fifo_head_reg[5]),
        .I5(fifo_head_reg[6]),
        .O(p_0_in[6]));
  FDCE \fifo_head_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(\fifo_head[0]_i_1_n_0 ),
        .Q(fifo_head_reg[0]));
  FDCE \fifo_head_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in[1]),
        .Q(fifo_head_reg[1]));
  FDCE \fifo_head_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(\fifo_head[2]_i_1_n_0 ),
        .Q(fifo_head_reg[2]));
  FDCE \fifo_head_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in[3]),
        .Q(fifo_head_reg[3]));
  FDCE \fifo_head_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in[4]),
        .Q(fifo_head_reg[4]));
  FDCE \fifo_head_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in[5]),
        .Q(fifo_head_reg[5]));
  FDCE \fifo_head_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in[6]),
        .Q(fifo_head_reg[6]));
  FDRE \fifo_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[0][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[0]_0 [0]),
        .R(1'b0));
  FDRE \fifo_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[0][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[0]_0 [1]),
        .R(1'b0));
  FDRE \fifo_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[0][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[0]_0 [2]),
        .R(1'b0));
  FDRE \fifo_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[0][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[0]_0 [3]),
        .R(1'b0));
  FDRE \fifo_reg[10][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[10][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[10]_10 [0]),
        .R(1'b0));
  FDRE \fifo_reg[10][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[10][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[10]_10 [1]),
        .R(1'b0));
  FDRE \fifo_reg[10][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[10][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[10]_10 [2]),
        .R(1'b0));
  FDRE \fifo_reg[10][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[10][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[10]_10 [3]),
        .R(1'b0));
  FDRE \fifo_reg[11][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[11][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[11]_11 [0]),
        .R(1'b0));
  FDRE \fifo_reg[11][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[11][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[11]_11 [1]),
        .R(1'b0));
  FDRE \fifo_reg[11][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[11][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[11]_11 [2]),
        .R(1'b0));
  FDRE \fifo_reg[11][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[11][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[11]_11 [3]),
        .R(1'b0));
  FDRE \fifo_reg[12][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[12][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[12]_12 [0]),
        .R(1'b0));
  FDRE \fifo_reg[12][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[12][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[12]_12 [1]),
        .R(1'b0));
  FDRE \fifo_reg[12][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[12][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[12]_12 [2]),
        .R(1'b0));
  FDRE \fifo_reg[12][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[12][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[12]_12 [3]),
        .R(1'b0));
  FDRE \fifo_reg[13][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[13][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[13]_13 [0]),
        .R(1'b0));
  FDRE \fifo_reg[13][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[13][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[13]_13 [1]),
        .R(1'b0));
  FDRE \fifo_reg[13][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[13][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[13]_13 [2]),
        .R(1'b0));
  FDRE \fifo_reg[13][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[13][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[13]_13 [3]),
        .R(1'b0));
  FDRE \fifo_reg[14][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[14][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[14]_14 [0]),
        .R(1'b0));
  FDRE \fifo_reg[14][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[14][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[14]_14 [1]),
        .R(1'b0));
  FDRE \fifo_reg[14][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[14][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[14]_14 [2]),
        .R(1'b0));
  FDRE \fifo_reg[14][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[14][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[14]_14 [3]),
        .R(1'b0));
  FDRE \fifo_reg[15][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[15][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[15]_15 [0]),
        .R(1'b0));
  FDRE \fifo_reg[15][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[15][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[15]_15 [1]),
        .R(1'b0));
  FDRE \fifo_reg[15][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[15][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[15]_15 [2]),
        .R(1'b0));
  FDRE \fifo_reg[15][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[15][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[15]_15 [3]),
        .R(1'b0));
  FDRE \fifo_reg[16][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[16][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[16]_16 [0]),
        .R(1'b0));
  FDRE \fifo_reg[16][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[16][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[16]_16 [1]),
        .R(1'b0));
  FDRE \fifo_reg[16][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[16][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[16]_16 [2]),
        .R(1'b0));
  FDRE \fifo_reg[16][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[16][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[16]_16 [3]),
        .R(1'b0));
  FDRE \fifo_reg[17][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[17][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[17]_17 [0]),
        .R(1'b0));
  FDRE \fifo_reg[17][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[17][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[17]_17 [1]),
        .R(1'b0));
  FDRE \fifo_reg[17][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[17][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[17]_17 [2]),
        .R(1'b0));
  FDRE \fifo_reg[17][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[17][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[17]_17 [3]),
        .R(1'b0));
  FDRE \fifo_reg[18][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[18][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[18]_18 [0]),
        .R(1'b0));
  FDRE \fifo_reg[18][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[18][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[18]_18 [1]),
        .R(1'b0));
  FDRE \fifo_reg[18][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[18][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[18]_18 [2]),
        .R(1'b0));
  FDRE \fifo_reg[18][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[18][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[18]_18 [3]),
        .R(1'b0));
  FDRE \fifo_reg[19][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[19][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[19]_19 [0]),
        .R(1'b0));
  FDRE \fifo_reg[19][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[19][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[19]_19 [1]),
        .R(1'b0));
  FDRE \fifo_reg[19][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[19][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[19]_19 [2]),
        .R(1'b0));
  FDRE \fifo_reg[19][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[19][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[19]_19 [3]),
        .R(1'b0));
  FDRE \fifo_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[1][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[1]_1 [0]),
        .R(1'b0));
  FDRE \fifo_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[1][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[1]_1 [1]),
        .R(1'b0));
  FDRE \fifo_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[1][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[1]_1 [2]),
        .R(1'b0));
  FDRE \fifo_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[1][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[1]_1 [3]),
        .R(1'b0));
  FDRE \fifo_reg[20][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[20][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[20]_20 [0]),
        .R(1'b0));
  FDRE \fifo_reg[20][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[20][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[20]_20 [1]),
        .R(1'b0));
  FDRE \fifo_reg[20][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[20][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[20]_20 [2]),
        .R(1'b0));
  FDRE \fifo_reg[20][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[20][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[20]_20 [3]),
        .R(1'b0));
  FDRE \fifo_reg[21][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[21][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[21]_21 [0]),
        .R(1'b0));
  FDRE \fifo_reg[21][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[21][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[21]_21 [1]),
        .R(1'b0));
  FDRE \fifo_reg[21][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[21][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[21]_21 [2]),
        .R(1'b0));
  FDRE \fifo_reg[21][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[21][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[21]_21 [3]),
        .R(1'b0));
  FDRE \fifo_reg[22][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[22][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[22]_22 [0]),
        .R(1'b0));
  FDRE \fifo_reg[22][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[22][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[22]_22 [1]),
        .R(1'b0));
  FDRE \fifo_reg[22][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[22][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[22]_22 [2]),
        .R(1'b0));
  FDRE \fifo_reg[22][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[22][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[22]_22 [3]),
        .R(1'b0));
  FDRE \fifo_reg[23][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[23][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[23]_23 [0]),
        .R(1'b0));
  FDRE \fifo_reg[23][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[23][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[23]_23 [1]),
        .R(1'b0));
  FDRE \fifo_reg[23][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[23][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[23]_23 [2]),
        .R(1'b0));
  FDRE \fifo_reg[23][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[23][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[23]_23 [3]),
        .R(1'b0));
  FDRE \fifo_reg[24][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[24][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[24]_24 [0]),
        .R(1'b0));
  FDRE \fifo_reg[24][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[24][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[24]_24 [1]),
        .R(1'b0));
  FDRE \fifo_reg[24][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[24][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[24]_24 [2]),
        .R(1'b0));
  FDRE \fifo_reg[24][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[24][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[24]_24 [3]),
        .R(1'b0));
  FDRE \fifo_reg[25][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[25][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[25]_25 [0]),
        .R(1'b0));
  FDRE \fifo_reg[25][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[25][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[25]_25 [1]),
        .R(1'b0));
  FDRE \fifo_reg[25][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[25][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[25]_25 [2]),
        .R(1'b0));
  FDRE \fifo_reg[25][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[25][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[25]_25 [3]),
        .R(1'b0));
  FDRE \fifo_reg[26][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[26][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[26]_26 [0]),
        .R(1'b0));
  FDRE \fifo_reg[26][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[26][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[26]_26 [1]),
        .R(1'b0));
  FDRE \fifo_reg[26][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[26][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[26]_26 [2]),
        .R(1'b0));
  FDRE \fifo_reg[26][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[26][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[26]_26 [3]),
        .R(1'b0));
  FDRE \fifo_reg[27][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[27][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[27]_27 [0]),
        .R(1'b0));
  FDRE \fifo_reg[27][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[27][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[27]_27 [1]),
        .R(1'b0));
  FDRE \fifo_reg[27][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[27][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[27]_27 [2]),
        .R(1'b0));
  FDRE \fifo_reg[27][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[27][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[27]_27 [3]),
        .R(1'b0));
  FDRE \fifo_reg[28][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[28][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[28]_28 [0]),
        .R(1'b0));
  FDRE \fifo_reg[28][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[28][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[28]_28 [1]),
        .R(1'b0));
  FDRE \fifo_reg[28][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[28][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[28]_28 [2]),
        .R(1'b0));
  FDRE \fifo_reg[28][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[28][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[28]_28 [3]),
        .R(1'b0));
  FDRE \fifo_reg[29][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[29][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[29]_29 [0]),
        .R(1'b0));
  FDRE \fifo_reg[29][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[29][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[29]_29 [1]),
        .R(1'b0));
  FDRE \fifo_reg[29][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[29][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[29]_29 [2]),
        .R(1'b0));
  FDRE \fifo_reg[29][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[29][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[29]_29 [3]),
        .R(1'b0));
  FDRE \fifo_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[2][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[2]_2 [0]),
        .R(1'b0));
  FDRE \fifo_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[2][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[2]_2 [1]),
        .R(1'b0));
  FDRE \fifo_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[2][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[2]_2 [2]),
        .R(1'b0));
  FDRE \fifo_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[2][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[2]_2 [3]),
        .R(1'b0));
  FDRE \fifo_reg[30][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[30][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[30]_30 [0]),
        .R(1'b0));
  FDRE \fifo_reg[30][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[30][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[30]_30 [1]),
        .R(1'b0));
  FDRE \fifo_reg[30][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[30][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[30]_30 [2]),
        .R(1'b0));
  FDRE \fifo_reg[30][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[30][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[30]_30 [3]),
        .R(1'b0));
  FDRE \fifo_reg[31][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[31][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[31]_31 [0]),
        .R(1'b0));
  FDRE \fifo_reg[31][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[31][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[31]_31 [1]),
        .R(1'b0));
  FDRE \fifo_reg[31][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[31][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[31]_31 [2]),
        .R(1'b0));
  FDRE \fifo_reg[31][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[31][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[31]_31 [3]),
        .R(1'b0));
  FDRE \fifo_reg[32][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[32][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[32]_32 [0]),
        .R(1'b0));
  FDRE \fifo_reg[32][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[32][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[32]_32 [1]),
        .R(1'b0));
  FDRE \fifo_reg[32][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[32][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[32]_32 [2]),
        .R(1'b0));
  FDRE \fifo_reg[32][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[32][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[32]_32 [3]),
        .R(1'b0));
  FDRE \fifo_reg[33][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[33][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[33]_33 [0]),
        .R(1'b0));
  FDRE \fifo_reg[33][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[33][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[33]_33 [1]),
        .R(1'b0));
  FDRE \fifo_reg[33][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[33][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[33]_33 [2]),
        .R(1'b0));
  FDRE \fifo_reg[33][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[33][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[33]_33 [3]),
        .R(1'b0));
  FDRE \fifo_reg[34][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[34][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[34]_34 [0]),
        .R(1'b0));
  FDRE \fifo_reg[34][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[34][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[34]_34 [1]),
        .R(1'b0));
  FDRE \fifo_reg[34][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[34][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[34]_34 [2]),
        .R(1'b0));
  FDRE \fifo_reg[34][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[34][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[34]_34 [3]),
        .R(1'b0));
  FDRE \fifo_reg[35][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[35][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[35]_35 [0]),
        .R(1'b0));
  FDRE \fifo_reg[35][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[35][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[35]_35 [1]),
        .R(1'b0));
  FDRE \fifo_reg[35][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[35][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[35]_35 [2]),
        .R(1'b0));
  FDRE \fifo_reg[35][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[35][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[35]_35 [3]),
        .R(1'b0));
  FDRE \fifo_reg[36][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[36][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[36]_36 [0]),
        .R(1'b0));
  FDRE \fifo_reg[36][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[36][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[36]_36 [1]),
        .R(1'b0));
  FDRE \fifo_reg[36][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[36][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[36]_36 [2]),
        .R(1'b0));
  FDRE \fifo_reg[36][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[36][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[36]_36 [3]),
        .R(1'b0));
  FDRE \fifo_reg[37][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[37][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[37]_37 [0]),
        .R(1'b0));
  FDRE \fifo_reg[37][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[37][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[37]_37 [1]),
        .R(1'b0));
  FDRE \fifo_reg[37][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[37][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[37]_37 [2]),
        .R(1'b0));
  FDRE \fifo_reg[37][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[37][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[37]_37 [3]),
        .R(1'b0));
  FDRE \fifo_reg[38][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[38][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[38]_38 [0]),
        .R(1'b0));
  FDRE \fifo_reg[38][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[38][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[38]_38 [1]),
        .R(1'b0));
  FDRE \fifo_reg[38][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[38][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[38]_38 [2]),
        .R(1'b0));
  FDRE \fifo_reg[38][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[38][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[38]_38 [3]),
        .R(1'b0));
  FDRE \fifo_reg[39][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[39][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[39]_39 [0]),
        .R(1'b0));
  FDRE \fifo_reg[39][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[39][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[39]_39 [1]),
        .R(1'b0));
  FDRE \fifo_reg[39][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[39][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[39]_39 [2]),
        .R(1'b0));
  FDRE \fifo_reg[39][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[39][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[39]_39 [3]),
        .R(1'b0));
  FDRE \fifo_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[3][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[3]_3 [0]),
        .R(1'b0));
  FDRE \fifo_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[3][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[3]_3 [1]),
        .R(1'b0));
  FDRE \fifo_reg[3][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[3][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[3]_3 [2]),
        .R(1'b0));
  FDRE \fifo_reg[3][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[3][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[3]_3 [3]),
        .R(1'b0));
  FDRE \fifo_reg[40][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[40][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[40]_40 [0]),
        .R(1'b0));
  FDRE \fifo_reg[40][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[40][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[40]_40 [1]),
        .R(1'b0));
  FDRE \fifo_reg[40][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[40][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[40]_40 [2]),
        .R(1'b0));
  FDRE \fifo_reg[40][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[40][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[40]_40 [3]),
        .R(1'b0));
  FDRE \fifo_reg[41][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[41][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[41]_41 [0]),
        .R(1'b0));
  FDRE \fifo_reg[41][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[41][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[41]_41 [1]),
        .R(1'b0));
  FDRE \fifo_reg[41][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[41][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[41]_41 [2]),
        .R(1'b0));
  FDRE \fifo_reg[41][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[41][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[41]_41 [3]),
        .R(1'b0));
  FDRE \fifo_reg[42][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[42][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[42]_42 [0]),
        .R(1'b0));
  FDRE \fifo_reg[42][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[42][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[42]_42 [1]),
        .R(1'b0));
  FDRE \fifo_reg[42][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[42][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[42]_42 [2]),
        .R(1'b0));
  FDRE \fifo_reg[42][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[42][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[42]_42 [3]),
        .R(1'b0));
  FDRE \fifo_reg[43][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[43][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[43]_43 [0]),
        .R(1'b0));
  FDRE \fifo_reg[43][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[43][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[43]_43 [1]),
        .R(1'b0));
  FDRE \fifo_reg[43][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[43][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[43]_43 [2]),
        .R(1'b0));
  FDRE \fifo_reg[43][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[43][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[43]_43 [3]),
        .R(1'b0));
  FDRE \fifo_reg[44][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[44][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[44]_44 [0]),
        .R(1'b0));
  FDRE \fifo_reg[44][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[44][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[44]_44 [1]),
        .R(1'b0));
  FDRE \fifo_reg[44][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[44][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[44]_44 [2]),
        .R(1'b0));
  FDRE \fifo_reg[44][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[44][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[44]_44 [3]),
        .R(1'b0));
  FDRE \fifo_reg[45][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[45][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[45]_45 [0]),
        .R(1'b0));
  FDRE \fifo_reg[45][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[45][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[45]_45 [1]),
        .R(1'b0));
  FDRE \fifo_reg[45][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[45][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[45]_45 [2]),
        .R(1'b0));
  FDRE \fifo_reg[45][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[45][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[45]_45 [3]),
        .R(1'b0));
  FDRE \fifo_reg[46][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[46][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[46]_46 [0]),
        .R(1'b0));
  FDRE \fifo_reg[46][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[46][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[46]_46 [1]),
        .R(1'b0));
  FDRE \fifo_reg[46][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[46][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[46]_46 [2]),
        .R(1'b0));
  FDRE \fifo_reg[46][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[46][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[46]_46 [3]),
        .R(1'b0));
  FDRE \fifo_reg[47][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[47][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[47]_47 [0]),
        .R(1'b0));
  FDRE \fifo_reg[47][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[47][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[47]_47 [1]),
        .R(1'b0));
  FDRE \fifo_reg[47][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[47][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[47]_47 [2]),
        .R(1'b0));
  FDRE \fifo_reg[47][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[47][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[47]_47 [3]),
        .R(1'b0));
  FDRE \fifo_reg[48][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[48][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[48]_48 [0]),
        .R(1'b0));
  FDRE \fifo_reg[48][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[48][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[48]_48 [1]),
        .R(1'b0));
  FDRE \fifo_reg[48][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[48][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[48]_48 [2]),
        .R(1'b0));
  FDRE \fifo_reg[48][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[48][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[48]_48 [3]),
        .R(1'b0));
  FDRE \fifo_reg[49][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[49][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[49]_49 [0]),
        .R(1'b0));
  FDRE \fifo_reg[49][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[49][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[49]_49 [1]),
        .R(1'b0));
  FDRE \fifo_reg[49][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[49][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[49]_49 [2]),
        .R(1'b0));
  FDRE \fifo_reg[49][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[49][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[49]_49 [3]),
        .R(1'b0));
  FDRE \fifo_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[4][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[4]_4 [0]),
        .R(1'b0));
  FDRE \fifo_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[4][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[4]_4 [1]),
        .R(1'b0));
  FDRE \fifo_reg[4][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[4][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[4]_4 [2]),
        .R(1'b0));
  FDRE \fifo_reg[4][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[4][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[4]_4 [3]),
        .R(1'b0));
  FDRE \fifo_reg[50][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[50][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[50]_50 [0]),
        .R(1'b0));
  FDRE \fifo_reg[50][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[50][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[50]_50 [1]),
        .R(1'b0));
  FDRE \fifo_reg[50][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[50][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[50]_50 [2]),
        .R(1'b0));
  FDRE \fifo_reg[50][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[50][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[50]_50 [3]),
        .R(1'b0));
  FDRE \fifo_reg[51][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[51][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[51]_51 [0]),
        .R(1'b0));
  FDRE \fifo_reg[51][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[51][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[51]_51 [1]),
        .R(1'b0));
  FDRE \fifo_reg[51][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[51][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[51]_51 [2]),
        .R(1'b0));
  FDRE \fifo_reg[51][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[51][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[51]_51 [3]),
        .R(1'b0));
  FDRE \fifo_reg[52][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[52][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[52]_52 [0]),
        .R(1'b0));
  FDRE \fifo_reg[52][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[52][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[52]_52 [1]),
        .R(1'b0));
  FDRE \fifo_reg[52][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[52][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[52]_52 [2]),
        .R(1'b0));
  FDRE \fifo_reg[52][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[52][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[52]_52 [3]),
        .R(1'b0));
  FDRE \fifo_reg[53][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[53][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[53]_53 [0]),
        .R(1'b0));
  FDRE \fifo_reg[53][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[53][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[53]_53 [1]),
        .R(1'b0));
  FDRE \fifo_reg[53][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[53][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[53]_53 [2]),
        .R(1'b0));
  FDRE \fifo_reg[53][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[53][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[53]_53 [3]),
        .R(1'b0));
  FDRE \fifo_reg[54][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[54][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[54]_54 [0]),
        .R(1'b0));
  FDRE \fifo_reg[54][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[54][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[54]_54 [1]),
        .R(1'b0));
  FDRE \fifo_reg[54][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[54][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[54]_54 [2]),
        .R(1'b0));
  FDRE \fifo_reg[54][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[54][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[54]_54 [3]),
        .R(1'b0));
  FDRE \fifo_reg[55][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[55][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[55]_55 [0]),
        .R(1'b0));
  FDRE \fifo_reg[55][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[55][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[55]_55 [1]),
        .R(1'b0));
  FDRE \fifo_reg[55][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[55][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[55]_55 [2]),
        .R(1'b0));
  FDRE \fifo_reg[55][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[55][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[55]_55 [3]),
        .R(1'b0));
  FDRE \fifo_reg[56][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[56][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[56]_56 [0]),
        .R(1'b0));
  FDRE \fifo_reg[56][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[56][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[56]_56 [1]),
        .R(1'b0));
  FDRE \fifo_reg[56][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[56][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[56]_56 [2]),
        .R(1'b0));
  FDRE \fifo_reg[56][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[56][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[56]_56 [3]),
        .R(1'b0));
  FDRE \fifo_reg[57][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[57][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[57]_57 [0]),
        .R(1'b0));
  FDRE \fifo_reg[57][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[57][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[57]_57 [1]),
        .R(1'b0));
  FDRE \fifo_reg[57][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[57][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[57]_57 [2]),
        .R(1'b0));
  FDRE \fifo_reg[57][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[57][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[57]_57 [3]),
        .R(1'b0));
  FDRE \fifo_reg[58][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[58][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[58]_58 [0]),
        .R(1'b0));
  FDRE \fifo_reg[58][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[58][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[58]_58 [1]),
        .R(1'b0));
  FDRE \fifo_reg[58][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[58][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[58]_58 [2]),
        .R(1'b0));
  FDRE \fifo_reg[58][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[58][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[58]_58 [3]),
        .R(1'b0));
  FDRE \fifo_reg[59][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[59][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[59]_59 [0]),
        .R(1'b0));
  FDRE \fifo_reg[59][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[59][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[59]_59 [1]),
        .R(1'b0));
  FDRE \fifo_reg[59][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[59][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[59]_59 [2]),
        .R(1'b0));
  FDRE \fifo_reg[59][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[59][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[59]_59 [3]),
        .R(1'b0));
  FDRE \fifo_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[5][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[5]_5 [0]),
        .R(1'b0));
  FDRE \fifo_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[5][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[5]_5 [1]),
        .R(1'b0));
  FDRE \fifo_reg[5][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[5][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[5]_5 [2]),
        .R(1'b0));
  FDRE \fifo_reg[5][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[5][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[5]_5 [3]),
        .R(1'b0));
  FDRE \fifo_reg[60][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[60][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[60]_60 [0]),
        .R(1'b0));
  FDRE \fifo_reg[60][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[60][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[60]_60 [1]),
        .R(1'b0));
  FDRE \fifo_reg[60][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[60][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[60]_60 [2]),
        .R(1'b0));
  FDRE \fifo_reg[60][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[60][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[60]_60 [3]),
        .R(1'b0));
  FDRE \fifo_reg[61][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[61][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[61]_61 [0]),
        .R(1'b0));
  FDRE \fifo_reg[61][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[61][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[61]_61 [1]),
        .R(1'b0));
  FDRE \fifo_reg[61][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[61][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[61]_61 [2]),
        .R(1'b0));
  FDRE \fifo_reg[61][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[61][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[61]_61 [3]),
        .R(1'b0));
  FDRE \fifo_reg[62][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[62][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[62]_62 [0]),
        .R(1'b0));
  FDRE \fifo_reg[62][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[62][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[62]_62 [1]),
        .R(1'b0));
  FDRE \fifo_reg[62][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[62][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[62]_62 [2]),
        .R(1'b0));
  FDRE \fifo_reg[62][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[62][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[62]_62 [3]),
        .R(1'b0));
  FDRE \fifo_reg[63][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[63][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[63]_63 [0]),
        .R(1'b0));
  FDRE \fifo_reg[63][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[63][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[63]_63 [1]),
        .R(1'b0));
  FDRE \fifo_reg[63][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[63][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[63]_63 [2]),
        .R(1'b0));
  FDRE \fifo_reg[63][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[63][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[63]_63 [3]),
        .R(1'b0));
  FDRE \fifo_reg[64][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[64][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[64]_64 [0]),
        .R(1'b0));
  FDRE \fifo_reg[64][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[64][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[64]_64 [1]),
        .R(1'b0));
  FDRE \fifo_reg[64][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[64][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[64]_64 [2]),
        .R(1'b0));
  FDRE \fifo_reg[64][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[64][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[64]_64 [3]),
        .R(1'b0));
  FDRE \fifo_reg[65][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[65][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[65]_65 [0]),
        .R(1'b0));
  FDRE \fifo_reg[65][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[65][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[65]_65 [1]),
        .R(1'b0));
  FDRE \fifo_reg[65][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[65][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[65]_65 [2]),
        .R(1'b0));
  FDRE \fifo_reg[65][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[65][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[65]_65 [3]),
        .R(1'b0));
  FDRE \fifo_reg[66][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[66][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[66]_66 [0]),
        .R(1'b0));
  FDRE \fifo_reg[66][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[66][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[66]_66 [1]),
        .R(1'b0));
  FDRE \fifo_reg[66][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[66][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[66]_66 [2]),
        .R(1'b0));
  FDRE \fifo_reg[66][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[66][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[66]_66 [3]),
        .R(1'b0));
  FDRE \fifo_reg[67][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[67][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[67]_67 [0]),
        .R(1'b0));
  FDRE \fifo_reg[67][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[67][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[67]_67 [1]),
        .R(1'b0));
  FDRE \fifo_reg[67][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[67][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[67]_67 [2]),
        .R(1'b0));
  FDRE \fifo_reg[67][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[67][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[67]_67 [3]),
        .R(1'b0));
  FDRE \fifo_reg[68][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[68][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[68]_68 [0]),
        .R(1'b0));
  FDRE \fifo_reg[68][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[68][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[68]_68 [1]),
        .R(1'b0));
  FDRE \fifo_reg[68][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[68][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[68]_68 [2]),
        .R(1'b0));
  FDRE \fifo_reg[68][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[68][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[68]_68 [3]),
        .R(1'b0));
  FDRE \fifo_reg[69][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[69][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[69]_69 [0]),
        .R(1'b0));
  FDRE \fifo_reg[69][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[69][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[69]_69 [1]),
        .R(1'b0));
  FDRE \fifo_reg[69][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[69][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[69]_69 [2]),
        .R(1'b0));
  FDRE \fifo_reg[69][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[69][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[69]_69 [3]),
        .R(1'b0));
  FDRE \fifo_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[6][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[6]_6 [0]),
        .R(1'b0));
  FDRE \fifo_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[6][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[6]_6 [1]),
        .R(1'b0));
  FDRE \fifo_reg[6][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[6][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[6]_6 [2]),
        .R(1'b0));
  FDRE \fifo_reg[6][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[6][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[6]_6 [3]),
        .R(1'b0));
  FDRE \fifo_reg[70][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[70][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[70]_70 [0]),
        .R(1'b0));
  FDRE \fifo_reg[70][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[70][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[70]_70 [1]),
        .R(1'b0));
  FDRE \fifo_reg[70][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[70][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[70]_70 [2]),
        .R(1'b0));
  FDRE \fifo_reg[70][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[70][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[70]_70 [3]),
        .R(1'b0));
  FDRE \fifo_reg[71][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[71][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[71]_71 [0]),
        .R(1'b0));
  FDRE \fifo_reg[71][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[71][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[71]_71 [1]),
        .R(1'b0));
  FDRE \fifo_reg[71][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[71][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[71]_71 [2]),
        .R(1'b0));
  FDRE \fifo_reg[71][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[71][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[71]_71 [3]),
        .R(1'b0));
  FDRE \fifo_reg[72][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[72][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[72]_72 [0]),
        .R(1'b0));
  FDRE \fifo_reg[72][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[72][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[72]_72 [1]),
        .R(1'b0));
  FDRE \fifo_reg[72][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[72][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[72]_72 [2]),
        .R(1'b0));
  FDRE \fifo_reg[72][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[72][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[72]_72 [3]),
        .R(1'b0));
  FDRE \fifo_reg[73][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[73][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[73]_73 [0]),
        .R(1'b0));
  FDRE \fifo_reg[73][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[73][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[73]_73 [1]),
        .R(1'b0));
  FDRE \fifo_reg[73][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[73][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[73]_73 [2]),
        .R(1'b0));
  FDRE \fifo_reg[73][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[73][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[73]_73 [3]),
        .R(1'b0));
  FDRE \fifo_reg[74][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[74][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[74]_74 [0]),
        .R(1'b0));
  FDRE \fifo_reg[74][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[74][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[74]_74 [1]),
        .R(1'b0));
  FDRE \fifo_reg[74][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[74][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[74]_74 [2]),
        .R(1'b0));
  FDRE \fifo_reg[74][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[74][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[74]_74 [3]),
        .R(1'b0));
  FDRE \fifo_reg[75][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[75][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[75]_75 [0]),
        .R(1'b0));
  FDRE \fifo_reg[75][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[75][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[75]_75 [1]),
        .R(1'b0));
  FDRE \fifo_reg[75][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[75][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[75]_75 [2]),
        .R(1'b0));
  FDRE \fifo_reg[75][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[75][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[75]_75 [3]),
        .R(1'b0));
  FDRE \fifo_reg[76][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[76][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[76]_76 [0]),
        .R(1'b0));
  FDRE \fifo_reg[76][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[76][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[76]_76 [1]),
        .R(1'b0));
  FDRE \fifo_reg[76][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[76][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[76]_76 [2]),
        .R(1'b0));
  FDRE \fifo_reg[76][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[76][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[76]_76 [3]),
        .R(1'b0));
  FDRE \fifo_reg[77][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[77][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[77]_77 [0]),
        .R(1'b0));
  FDRE \fifo_reg[77][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[77][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[77]_77 [1]),
        .R(1'b0));
  FDRE \fifo_reg[77][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[77][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[77]_77 [2]),
        .R(1'b0));
  FDRE \fifo_reg[77][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[77][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[77]_77 [3]),
        .R(1'b0));
  FDRE \fifo_reg[78][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[78][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[78]_78 [0]),
        .R(1'b0));
  FDRE \fifo_reg[78][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[78][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[78]_78 [1]),
        .R(1'b0));
  FDRE \fifo_reg[78][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[78][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[78]_78 [2]),
        .R(1'b0));
  FDRE \fifo_reg[78][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[78][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[78]_78 [3]),
        .R(1'b0));
  FDRE \fifo_reg[79][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[79][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[79]_79 [0]),
        .R(1'b0));
  FDRE \fifo_reg[79][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[79][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[79]_79 [1]),
        .R(1'b0));
  FDRE \fifo_reg[79][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[79][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[79]_79 [2]),
        .R(1'b0));
  FDRE \fifo_reg[79][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[79][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[79]_79 [3]),
        .R(1'b0));
  FDRE \fifo_reg[7][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[7][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[7]_7 [0]),
        .R(1'b0));
  FDRE \fifo_reg[7][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[7][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[7]_7 [1]),
        .R(1'b0));
  FDRE \fifo_reg[7][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[7][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[7]_7 [2]),
        .R(1'b0));
  FDRE \fifo_reg[7][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[7][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[7]_7 [3]),
        .R(1'b0));
  FDRE \fifo_reg[80][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[80][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[80]_80 [0]),
        .R(1'b0));
  FDRE \fifo_reg[80][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[80][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[80]_80 [1]),
        .R(1'b0));
  FDRE \fifo_reg[80][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[80][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[80]_80 [2]),
        .R(1'b0));
  FDRE \fifo_reg[80][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[80][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[80]_80 [3]),
        .R(1'b0));
  FDRE \fifo_reg[81][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[81][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[81]_81 [0]),
        .R(1'b0));
  FDRE \fifo_reg[81][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[81][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[81]_81 [1]),
        .R(1'b0));
  FDRE \fifo_reg[81][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[81][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[81]_81 [2]),
        .R(1'b0));
  FDRE \fifo_reg[81][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[81][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[81]_81 [3]),
        .R(1'b0));
  FDRE \fifo_reg[82][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[82][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[82]_82 [0]),
        .R(1'b0));
  FDRE \fifo_reg[82][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[82][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[82]_82 [1]),
        .R(1'b0));
  FDRE \fifo_reg[82][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[82][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[82]_82 [2]),
        .R(1'b0));
  FDRE \fifo_reg[82][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[82][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[82]_82 [3]),
        .R(1'b0));
  FDRE \fifo_reg[83][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[83][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[83]_83 [0]),
        .R(1'b0));
  FDRE \fifo_reg[83][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[83][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[83]_83 [1]),
        .R(1'b0));
  FDRE \fifo_reg[83][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[83][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[83]_83 [2]),
        .R(1'b0));
  FDRE \fifo_reg[83][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[83][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[83]_83 [3]),
        .R(1'b0));
  FDRE \fifo_reg[84][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[84][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[84]_84 [0]),
        .R(1'b0));
  FDRE \fifo_reg[84][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[84][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[84]_84 [1]),
        .R(1'b0));
  FDRE \fifo_reg[84][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[84][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[84]_84 [2]),
        .R(1'b0));
  FDRE \fifo_reg[84][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[84][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[84]_84 [3]),
        .R(1'b0));
  FDRE \fifo_reg[85][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[85][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[85]_85 [0]),
        .R(1'b0));
  FDRE \fifo_reg[85][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[85][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[85]_85 [1]),
        .R(1'b0));
  FDRE \fifo_reg[85][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[85][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[85]_85 [2]),
        .R(1'b0));
  FDRE \fifo_reg[85][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[85][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[85]_85 [3]),
        .R(1'b0));
  FDRE \fifo_reg[86][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[86][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[86]_86 [0]),
        .R(1'b0));
  FDRE \fifo_reg[86][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[86][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[86]_86 [1]),
        .R(1'b0));
  FDRE \fifo_reg[86][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[86][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[86]_86 [2]),
        .R(1'b0));
  FDRE \fifo_reg[86][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[86][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[86]_86 [3]),
        .R(1'b0));
  FDRE \fifo_reg[87][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[87][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[87]_87 [0]),
        .R(1'b0));
  FDRE \fifo_reg[87][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[87][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[87]_87 [1]),
        .R(1'b0));
  FDRE \fifo_reg[87][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[87][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[87]_87 [2]),
        .R(1'b0));
  FDRE \fifo_reg[87][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[87][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[87]_87 [3]),
        .R(1'b0));
  FDRE \fifo_reg[88][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[88][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[88]_88 [0]),
        .R(1'b0));
  FDRE \fifo_reg[88][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[88][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[88]_88 [1]),
        .R(1'b0));
  FDRE \fifo_reg[88][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[88][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[88]_88 [2]),
        .R(1'b0));
  FDRE \fifo_reg[88][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[88][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[88]_88 [3]),
        .R(1'b0));
  FDRE \fifo_reg[89][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[89][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[89]_89 [0]),
        .R(1'b0));
  FDRE \fifo_reg[89][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[89][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[89]_89 [1]),
        .R(1'b0));
  FDRE \fifo_reg[89][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[89][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[89]_89 [2]),
        .R(1'b0));
  FDRE \fifo_reg[89][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[89][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[89]_89 [3]),
        .R(1'b0));
  FDRE \fifo_reg[8][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[8][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[8]_8 [0]),
        .R(1'b0));
  FDRE \fifo_reg[8][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[8][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[8]_8 [1]),
        .R(1'b0));
  FDRE \fifo_reg[8][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[8][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[8]_8 [2]),
        .R(1'b0));
  FDRE \fifo_reg[8][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[8][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[8]_8 [3]),
        .R(1'b0));
  FDRE \fifo_reg[90][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[90][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[90]_90 [0]),
        .R(1'b0));
  FDRE \fifo_reg[90][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[90][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[90]_90 [1]),
        .R(1'b0));
  FDRE \fifo_reg[90][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[90][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[90]_90 [2]),
        .R(1'b0));
  FDRE \fifo_reg[90][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[90][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[90]_90 [3]),
        .R(1'b0));
  FDRE \fifo_reg[91][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[91][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[91]_91 [0]),
        .R(1'b0));
  FDRE \fifo_reg[91][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[91][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[91]_91 [1]),
        .R(1'b0));
  FDRE \fifo_reg[91][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[91][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[91]_91 [2]),
        .R(1'b0));
  FDRE \fifo_reg[91][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[91][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[91]_91 [3]),
        .R(1'b0));
  FDRE \fifo_reg[92][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[92][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[92]_92 [0]),
        .R(1'b0));
  FDRE \fifo_reg[92][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[92][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[92]_92 [1]),
        .R(1'b0));
  FDRE \fifo_reg[92][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[92][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[92]_92 [2]),
        .R(1'b0));
  FDRE \fifo_reg[92][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[92][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[92]_92 [3]),
        .R(1'b0));
  FDRE \fifo_reg[93][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[93][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[93]_93 [0]),
        .R(1'b0));
  FDRE \fifo_reg[93][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[93][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[93]_93 [1]),
        .R(1'b0));
  FDRE \fifo_reg[93][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[93][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[93]_93 [2]),
        .R(1'b0));
  FDRE \fifo_reg[93][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[93][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[93]_93 [3]),
        .R(1'b0));
  FDRE \fifo_reg[94][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[94][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[94]_94 [0]),
        .R(1'b0));
  FDRE \fifo_reg[94][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[94][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[94]_94 [1]),
        .R(1'b0));
  FDRE \fifo_reg[94][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[94][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[94]_94 [2]),
        .R(1'b0));
  FDRE \fifo_reg[94][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[94][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[94]_94 [3]),
        .R(1'b0));
  FDRE \fifo_reg[95][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[95][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[95]_95 [0]),
        .R(1'b0));
  FDRE \fifo_reg[95][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[95][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[95]_95 [1]),
        .R(1'b0));
  FDRE \fifo_reg[95][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[95][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[95]_95 [2]),
        .R(1'b0));
  FDRE \fifo_reg[95][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[95][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[95]_95 [3]),
        .R(1'b0));
  FDRE \fifo_reg[96][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[96][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[96]_96 [0]),
        .R(1'b0));
  FDRE \fifo_reg[96][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[96][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[96]_96 [1]),
        .R(1'b0));
  FDRE \fifo_reg[96][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[96][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[96]_96 [2]),
        .R(1'b0));
  FDRE \fifo_reg[96][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[96][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[96]_96 [3]),
        .R(1'b0));
  FDRE \fifo_reg[97][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[97][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[97]_97 [0]),
        .R(1'b0));
  FDRE \fifo_reg[97][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[97][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[97]_97 [1]),
        .R(1'b0));
  FDRE \fifo_reg[97][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[97][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[97]_97 [2]),
        .R(1'b0));
  FDRE \fifo_reg[97][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[97][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[97]_97 [3]),
        .R(1'b0));
  FDRE \fifo_reg[98][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[98][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[98]_98 [0]),
        .R(1'b0));
  FDRE \fifo_reg[98][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[98][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[98]_98 [1]),
        .R(1'b0));
  FDRE \fifo_reg[98][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[98][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[98]_98 [2]),
        .R(1'b0));
  FDRE \fifo_reg[98][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[98][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[98]_98 [3]),
        .R(1'b0));
  FDRE \fifo_reg[99][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[99][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[99]_99 [0]),
        .R(1'b0));
  FDRE \fifo_reg[99][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[99][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[99]_99 [1]),
        .R(1'b0));
  FDRE \fifo_reg[99][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[99][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[99]_99 [2]),
        .R(1'b0));
  FDRE \fifo_reg[99][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[99][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[99]_99 [3]),
        .R(1'b0));
  FDRE \fifo_reg[9][0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[9][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\fifo_reg[9]_9 [0]),
        .R(1'b0));
  FDRE \fifo_reg[9][1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[9][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\fifo_reg[9]_9 [1]),
        .R(1'b0));
  FDRE \fifo_reg[9][2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[9][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\fifo_reg[9]_9 [2]),
        .R(1'b0));
  FDRE \fifo_reg[9][3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo[9][3]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\fifo_reg[9]_9 [3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_tail[0]_i_1 
       (.I0(fifo_tail_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_tail[1]_i_1 
       (.I0(fifo_tail_reg[0]),
        .I1(fifo_tail_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_tail[2]_i_1 
       (.I0(fifo_tail_reg[0]),
        .I1(fifo_tail_reg[1]),
        .I2(fifo_tail_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fifo_tail[3]_i_1 
       (.I0(fifo_tail_reg[1]),
        .I1(fifo_tail_reg[0]),
        .I2(fifo_tail_reg[2]),
        .I3(fifo_tail_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \fifo_tail[4]_i_1 
       (.I0(fifo_tail_reg[2]),
        .I1(fifo_tail_reg[0]),
        .I2(fifo_tail_reg[1]),
        .I3(fifo_tail_reg[3]),
        .I4(fifo_tail_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \fifo_tail[5]_i_1 
       (.I0(fifo_tail_reg[3]),
        .I1(fifo_tail_reg[1]),
        .I2(fifo_tail_reg[0]),
        .I3(fifo_tail_reg[2]),
        .I4(fifo_tail_reg[4]),
        .I5(fifo_tail_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fifo_tail[6]_i_1 
       (.I0(\fifo_tail[6]_i_2_n_0 ),
        .I1(fifo_tail_reg[5]),
        .I2(fifo_tail_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \fifo_tail[6]_i_2 
       (.I0(fifo_tail_reg[4]),
        .I1(fifo_tail_reg[2]),
        .I2(fifo_tail_reg[0]),
        .I3(fifo_tail_reg[1]),
        .I4(fifo_tail_reg[3]),
        .O(\fifo_tail[6]_i_2_n_0 ));
  FDCE \fifo_tail_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in__0[0]),
        .Q(fifo_tail_reg[0]));
  FDCE \fifo_tail_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in__0[1]),
        .Q(fifo_tail_reg[1]));
  FDCE \fifo_tail_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in__0[2]),
        .Q(fifo_tail_reg[2]));
  FDCE \fifo_tail_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in__0[3]),
        .Q(fifo_tail_reg[3]));
  FDCE \fifo_tail_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in__0[4]),
        .Q(fifo_tail_reg[4]));
  FDCE \fifo_tail_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in__0[5]),
        .Q(fifo_tail_reg[5]));
  FDCE \fifo_tail_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\fifo_data[3]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(p_0_in__0[6]),
        .Q(fifo_tail_reg[6]));
  CARRY8 prev_reg_wrdout1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({prev_reg_wrdout1_carry_n_0,prev_reg_wrdout1_carry_n_1,prev_reg_wrdout1_carry_n_2,prev_reg_wrdout1_carry_n_3,prev_reg_wrdout1_carry_n_4,prev_reg_wrdout1_carry_n_5,prev_reg_wrdout1_carry_n_6,prev_reg_wrdout1_carry_n_7}),
        .DI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_prev_reg_wrdout1_carry_O_UNCONNECTED[7:0]),
        .S({prev_reg_wrdout1_carry_i_1_n_0,prev_reg_wrdout1_carry_i_2_n_0,prev_reg_wrdout1_carry_i_3_n_0,prev_reg_wrdout1_carry_i_4_n_0,prev_reg_wrdout1_carry_i_5_n_0,prev_reg_wrdout1_carry_i_6_n_0,prev_reg_wrdout1_carry_i_7_n_0,prev_reg_wrdout1_carry_i_8_n_0}));
  CARRY8 prev_reg_wrdout1_carry__0
       (.CI(prev_reg_wrdout1_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_prev_reg_wrdout1_carry__0_CO_UNCONNECTED[7:3],prev_reg_wrdout18_in,prev_reg_wrdout1_carry__0_n_6,prev_reg_wrdout1_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_prev_reg_wrdout1_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,prev_reg_wrdout1_carry__0_i_1_n_0,prev_reg_wrdout1_carry__0_i_2_n_0,prev_reg_wrdout1_carry__0_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    prev_reg_wrdout1_carry__0_i_1
       (.I0(S_AXI_WDATA[30]),
        .I1(prev_reg_wrdout[30]),
        .I2(S_AXI_WDATA[31]),
        .I3(prev_reg_wrdout[31]),
        .O(prev_reg_wrdout1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry__0_i_2
       (.I0(S_AXI_WDATA[27]),
        .I1(prev_reg_wrdout[27]),
        .I2(prev_reg_wrdout[29]),
        .I3(S_AXI_WDATA[29]),
        .I4(prev_reg_wrdout[28]),
        .I5(S_AXI_WDATA[28]),
        .O(prev_reg_wrdout1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry__0_i_3
       (.I0(S_AXI_WDATA[24]),
        .I1(prev_reg_wrdout[24]),
        .I2(prev_reg_wrdout[26]),
        .I3(S_AXI_WDATA[26]),
        .I4(prev_reg_wrdout[25]),
        .I5(S_AXI_WDATA[25]),
        .O(prev_reg_wrdout1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry_i_1
       (.I0(S_AXI_WDATA[21]),
        .I1(prev_reg_wrdout[21]),
        .I2(prev_reg_wrdout[23]),
        .I3(S_AXI_WDATA[23]),
        .I4(prev_reg_wrdout[22]),
        .I5(S_AXI_WDATA[22]),
        .O(prev_reg_wrdout1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry_i_2
       (.I0(S_AXI_WDATA[18]),
        .I1(prev_reg_wrdout[18]),
        .I2(prev_reg_wrdout[20]),
        .I3(S_AXI_WDATA[20]),
        .I4(prev_reg_wrdout[19]),
        .I5(S_AXI_WDATA[19]),
        .O(prev_reg_wrdout1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry_i_3
       (.I0(S_AXI_WDATA[15]),
        .I1(prev_reg_wrdout[15]),
        .I2(prev_reg_wrdout[17]),
        .I3(S_AXI_WDATA[17]),
        .I4(prev_reg_wrdout[16]),
        .I5(S_AXI_WDATA[16]),
        .O(prev_reg_wrdout1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry_i_4
       (.I0(S_AXI_WDATA[12]),
        .I1(prev_reg_wrdout[12]),
        .I2(prev_reg_wrdout[14]),
        .I3(S_AXI_WDATA[14]),
        .I4(prev_reg_wrdout[13]),
        .I5(S_AXI_WDATA[13]),
        .O(prev_reg_wrdout1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry_i_5
       (.I0(S_AXI_WDATA[9]),
        .I1(prev_reg_wrdout[9]),
        .I2(prev_reg_wrdout[11]),
        .I3(S_AXI_WDATA[11]),
        .I4(prev_reg_wrdout[10]),
        .I5(S_AXI_WDATA[10]),
        .O(prev_reg_wrdout1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry_i_6
       (.I0(S_AXI_WDATA[6]),
        .I1(prev_reg_wrdout[6]),
        .I2(prev_reg_wrdout[8]),
        .I3(S_AXI_WDATA[8]),
        .I4(prev_reg_wrdout[7]),
        .I5(S_AXI_WDATA[7]),
        .O(prev_reg_wrdout1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry_i_7
       (.I0(S_AXI_WDATA[3]),
        .I1(prev_reg_wrdout[3]),
        .I2(prev_reg_wrdout[5]),
        .I3(S_AXI_WDATA[5]),
        .I4(prev_reg_wrdout[4]),
        .I5(S_AXI_WDATA[4]),
        .O(prev_reg_wrdout1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    prev_reg_wrdout1_carry_i_8
       (.I0(S_AXI_WDATA[0]),
        .I1(prev_reg_wrdout[0]),
        .I2(prev_reg_wrdout[2]),
        .I3(S_AXI_WDATA[2]),
        .I4(prev_reg_wrdout[1]),
        .I5(S_AXI_WDATA[1]),
        .O(prev_reg_wrdout1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h2A2A2A2A2A2A2AAA)) 
    \prev_reg_wrdout[31]_i_1 
       (.I0(prev_reg_wrdout18_in),
        .I1(\fifo_count_reg_n_0_[5] ),
        .I2(\fifo_count_reg_n_0_[6] ),
        .I3(\fifo_count_reg_n_0_[4] ),
        .I4(\fifo_count_reg_n_0_[3] ),
        .I5(\fifo_count_reg_n_0_[2] ),
        .O(prev_reg_wrdout0));
  FDCE \prev_reg_wrdout_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[0]),
        .Q(prev_reg_wrdout[0]));
  FDCE \prev_reg_wrdout_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[10]),
        .Q(prev_reg_wrdout[10]));
  FDCE \prev_reg_wrdout_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[11]),
        .Q(prev_reg_wrdout[11]));
  FDCE \prev_reg_wrdout_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[12]),
        .Q(prev_reg_wrdout[12]));
  FDCE \prev_reg_wrdout_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[13]),
        .Q(prev_reg_wrdout[13]));
  FDCE \prev_reg_wrdout_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[14]),
        .Q(prev_reg_wrdout[14]));
  FDCE \prev_reg_wrdout_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[15]),
        .Q(prev_reg_wrdout[15]));
  FDCE \prev_reg_wrdout_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[16]),
        .Q(prev_reg_wrdout[16]));
  FDCE \prev_reg_wrdout_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[17]),
        .Q(prev_reg_wrdout[17]));
  FDCE \prev_reg_wrdout_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[18]),
        .Q(prev_reg_wrdout[18]));
  FDCE \prev_reg_wrdout_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[19]),
        .Q(prev_reg_wrdout[19]));
  FDCE \prev_reg_wrdout_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[1]),
        .Q(prev_reg_wrdout[1]));
  FDCE \prev_reg_wrdout_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[20]),
        .Q(prev_reg_wrdout[20]));
  FDCE \prev_reg_wrdout_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[21]),
        .Q(prev_reg_wrdout[21]));
  FDCE \prev_reg_wrdout_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[22]),
        .Q(prev_reg_wrdout[22]));
  FDCE \prev_reg_wrdout_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[23]),
        .Q(prev_reg_wrdout[23]));
  FDCE \prev_reg_wrdout_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[24]),
        .Q(prev_reg_wrdout[24]));
  FDCE \prev_reg_wrdout_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[25]),
        .Q(prev_reg_wrdout[25]));
  FDCE \prev_reg_wrdout_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[26]),
        .Q(prev_reg_wrdout[26]));
  FDCE \prev_reg_wrdout_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[27]),
        .Q(prev_reg_wrdout[27]));
  FDCE \prev_reg_wrdout_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[28]),
        .Q(prev_reg_wrdout[28]));
  FDCE \prev_reg_wrdout_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[29]),
        .Q(prev_reg_wrdout[29]));
  FDCE \prev_reg_wrdout_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[2]),
        .Q(prev_reg_wrdout[2]));
  FDCE \prev_reg_wrdout_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[30]),
        .Q(prev_reg_wrdout[30]));
  FDCE \prev_reg_wrdout_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[31]),
        .Q(prev_reg_wrdout[31]));
  FDCE \prev_reg_wrdout_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[3]),
        .Q(prev_reg_wrdout[3]));
  FDCE \prev_reg_wrdout_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[4]),
        .Q(prev_reg_wrdout[4]));
  FDCE \prev_reg_wrdout_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[5]),
        .Q(prev_reg_wrdout[5]));
  FDCE \prev_reg_wrdout_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[6]),
        .Q(prev_reg_wrdout[6]));
  FDCE \prev_reg_wrdout_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[7]),
        .Q(prev_reg_wrdout[7]));
  FDCE \prev_reg_wrdout_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[8]),
        .Q(prev_reg_wrdout[8]));
  FDCE \prev_reg_wrdout_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(prev_reg_wrdout0),
        .CLR(\axi_rdata_reg[0] ),
        .D(S_AXI_WDATA[9]),
        .Q(prev_reg_wrdout[9]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00CCCCCE)) 
    processing_fifo_data_i_2
       (.I0(fifo_tail0__18),
        .I1(ConfigClk_reg_0),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .O(processing_fifo_data));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    processing_fifo_data_i_3
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ConfigClk_reg_0),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h4444544444444444)) 
    processing_fifo_data_i_4
       (.I0(ConfigClk_reg_0),
        .I1(fifo_tail0__18),
        .I2(processing_fifo_data_i_7_n_0),
        .I3(Q[0]),
        .I4(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I5(S_AXI_ARESETN),
        .O(ConfigClk_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    processing_fifo_data_i_5
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\FSM_sequential_current_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'h00020000F00F0000)) 
    processing_fifo_data_i_6
       (.I0(S_AXI_ARESETN),
        .I1(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I2(ConfigClk_reg_0),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    processing_fifo_data_i_7
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(processing_fifo_data_i_7_n_0));
  FDCE processing_fifo_data_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\axi_rdata_reg[0] ),
        .D(processing_fifo_data_reg_1),
        .Q(processing_fifo_data_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    \reg1[3]_i_3 
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .O(\reg1[3]_i_3_n_0 ));
  FDRE \reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi4lite_interface_inst_n_7),
        .D(fifo_data[0]),
        .Q(\reg1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi4lite_interface_inst_n_7),
        .D(fifo_data[1]),
        .Q(\reg1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi4lite_interface_inst_n_7),
        .D(fifo_data[2]),
        .Q(\reg1_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi4lite_interface_inst_n_7),
        .D(fifo_data[3]),
        .Q(\reg1_reg[3]_0 [1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \reg_rddin[0][0]_i_2 
       (.I0(S_AXI_ARESETN),
        .I1(Q[1]),
        .I2(ConfigClk_reg_0),
        .I3(Q[0]),
        .I4(Q[2]),
        .O(S_AXI_ARESETN_1));
  FDRE \reg_rddin_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\reg_rddin_reg[0][0]_1 ),
        .Q(\reg_rddin_reg[0][0]_0 ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 wait_counter0_carry
       (.CI(wait_counter_reg[0]),
        .CI_TOP(1'b0),
        .CO({wait_counter0_carry_n_0,wait_counter0_carry_n_1,wait_counter0_carry_n_2,wait_counter0_carry_n_3,wait_counter0_carry_n_4,wait_counter0_carry_n_5,wait_counter0_carry_n_6,wait_counter0_carry_n_7}),
        .DI(wait_counter_reg[8:1]),
        .O(wait_counter0[8:1]),
        .S({wait_counter0_carry_i_1_n_0,wait_counter0_carry_i_2_n_0,wait_counter0_carry_i_3_n_0,wait_counter0_carry_i_4_n_0,wait_counter0_carry_i_5_n_0,wait_counter0_carry_i_6_n_0,wait_counter0_carry_i_7_n_0,wait_counter0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 wait_counter0_carry__0
       (.CI(wait_counter0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_wait_counter0_carry__0_CO_UNCONNECTED[7:3],wait_counter0_carry__0_n_5,wait_counter0_carry__0_n_6,wait_counter0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,wait_counter_reg[11:9]}),
        .O({NLW_wait_counter0_carry__0_O_UNCONNECTED[7:4],wait_counter0[12:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,wait_counter0_carry__0_i_1_n_0,wait_counter0_carry__0_i_2_n_0,wait_counter0_carry__0_i_3_n_0,wait_counter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__0_i_1
       (.I0(wait_counter_reg[12]),
        .O(wait_counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__0_i_2
       (.I0(wait_counter_reg[11]),
        .O(wait_counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__0_i_3
       (.I0(wait_counter_reg[10]),
        .O(wait_counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry__0_i_4
       (.I0(wait_counter_reg[9]),
        .O(wait_counter0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_1
       (.I0(wait_counter_reg[8]),
        .O(wait_counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_2
       (.I0(wait_counter_reg[7]),
        .O(wait_counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_3
       (.I0(wait_counter_reg[6]),
        .O(wait_counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_4
       (.I0(wait_counter_reg[5]),
        .O(wait_counter0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_5
       (.I0(wait_counter_reg[4]),
        .O(wait_counter0_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_6
       (.I0(wait_counter_reg[3]),
        .O(wait_counter0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_7
       (.I0(wait_counter_reg[2]),
        .O(wait_counter0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    wait_counter0_carry_i_8
       (.I0(wait_counter_reg[1]),
        .O(wait_counter0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wait_counter[0]_i_1 
       (.I0(wait_counter_reg[0]),
        .O(wait_counter0[0]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \wait_counter[12]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I4(ConfigClk_reg_0),
        .O(\wait_counter[12]_i_1_n_0 ));
  FDCE \wait_counter_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[0]),
        .Q(wait_counter_reg[0]));
  FDCE \wait_counter_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[10]),
        .Q(wait_counter_reg[10]));
  FDCE \wait_counter_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[11]),
        .Q(wait_counter_reg[11]));
  FDCE \wait_counter_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[12]),
        .Q(wait_counter_reg[12]));
  FDCE \wait_counter_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[1]),
        .Q(wait_counter_reg[1]));
  FDCE \wait_counter_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[2]),
        .Q(wait_counter_reg[2]));
  FDCE \wait_counter_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[3]),
        .Q(wait_counter_reg[3]));
  FDCE \wait_counter_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[4]),
        .Q(wait_counter_reg[4]));
  FDCE \wait_counter_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[5]),
        .Q(wait_counter_reg[5]));
  FDCE \wait_counter_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[6]),
        .Q(wait_counter_reg[6]));
  FDCE \wait_counter_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[7]),
        .Q(wait_counter_reg[7]));
  FDCE \wait_counter_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[8]),
        .Q(wait_counter_reg[8]));
  FDCE \wait_counter_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\wait_counter[12]_i_1_n_0 ),
        .CLR(\axi_rdata_reg[0] ),
        .D(wait_counter0[9]),
        .Q(wait_counter_reg[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_configReg_interface_top
   (ConfigClk_reg,
    S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_RDATA,
    SuperpixSel,
    Reset_not,
    ConfigIn,
    S_AXI_ACLK,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    S_AXI_ARVALID,
    S_AXI_WDATA,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ARESETN,
    S_AXI_WSTRB,
    S_AXI_BREADY,
    S_AXI_RREADY,
    ConfigOut);
  output ConfigClk_reg;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output [0:0]S_AXI_RDATA;
  output SuperpixSel;
  output Reset_not;
  output ConfigIn;
  input S_AXI_ACLK;
  input [8:0]S_AXI_ARADDR;
  input [8:0]S_AXI_AWADDR;
  input S_AXI_ARVALID;
  input [31:0]S_AXI_WDATA;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ARESETN;
  input [0:0]S_AXI_WSTRB;
  input S_AXI_BREADY;
  input S_AXI_RREADY;
  input ConfigOut;

  wire ConfigClk_i_1_n_0;
  wire ConfigClk_i_2_n_0;
  wire ConfigClk_reg;
  wire ConfigIn;
  wire ConfigIn0_out;
  wire ConfigIn_i_1_n_0;
  wire ConfigOut;
  wire Reset_not;
  wire Reset_not_i_1_n_0;
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
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [0:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire SuperpixSel;
  wire SuperpixSel_i_1_n_0;
  wire aw_en_i_1_n_0;
  wire \axi4lite_interface_inst/axi4_slave_inst/axi_arready0 ;
  wire [0:0]\axi4lite_interface_inst/mem_rddout_i ;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire configReg_interface_inst_n_12;
  wire configReg_interface_inst_n_16;
  wire configReg_interface_inst_n_17;
  wire configReg_interface_inst_n_18;
  wire configReg_interface_inst_n_19;
  wire configReg_interface_inst_n_20;
  wire configReg_interface_inst_n_24;
  wire configReg_interface_inst_n_25;
  wire configReg_interface_inst_n_26;
  wire configReg_interface_inst_n_28;
  wire configReg_interface_inst_n_30;
  wire configReg_interface_inst_n_4;
  wire configReg_interface_inst_n_8;
  wire [2:0]current_state__0;
  wire p_0_in;
  wire p_0_in__0;
  wire processing_fifo_data;
  wire processing_fifo_data_i_1_n_0;
  wire \reg_rddin[0][0]_i_1_n_0 ;

  LUT5 #(
    .INIT(32'hFFBF0040)) 
    ConfigClk_i_1
       (.I0(configReg_interface_inst_n_24),
        .I1(configReg_interface_inst_n_19),
        .I2(configReg_interface_inst_n_20),
        .I3(configReg_interface_inst_n_18),
        .I4(ConfigClk_reg),
        .O(ConfigClk_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ConfigClk_i_2
       (.I0(S_AXI_ARESETN),
        .O(ConfigClk_i_2_n_0));
  LUT6 #(
    .INIT(64'h4F44FFFF4F440000)) 
    ConfigIn_i_1
       (.I0(current_state__0[0]),
        .I1(ConfigClk_reg),
        .I2(current_state__0[2]),
        .I3(p_0_in),
        .I4(ConfigIn0_out),
        .I5(ConfigIn),
        .O(ConfigIn_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFB0010)) 
    Reset_not_i_1
       (.I0(current_state__0[2]),
        .I1(current_state__0[0]),
        .I2(current_state__0[1]),
        .I3(ConfigClk_reg),
        .I4(Reset_not),
        .O(Reset_not_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    SuperpixSel_i_1
       (.I0(p_0_in__0),
        .I1(S_AXI_ARESETN),
        .I2(ConfigClk_reg),
        .I3(current_state__0[0]),
        .I4(configReg_interface_inst_n_17),
        .I5(SuperpixSel),
        .O(SuperpixSel_i_1_n_0));
  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(configReg_interface_inst_n_4),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(\axi4lite_interface_inst/axi4_slave_inst/axi_arready0 ));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi4lite_interface_inst/mem_rddout_i ),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(S_AXI_RVALID),
        .I4(S_AXI_RDATA),
        .O(\axi_rdata[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_configReg_interface configReg_interface_inst
       (.ConfigClk_reg_0(ConfigClk_reg),
        .ConfigClk_reg_1(configReg_interface_inst_n_26),
        .ConfigClk_reg_2(ConfigClk_i_1_n_0),
        .ConfigIn(ConfigIn),
        .ConfigIn0_out(ConfigIn0_out),
        .ConfigIn_reg_0(ConfigIn_i_1_n_0),
        .E(\axi4lite_interface_inst/axi4_slave_inst/axi_arready0 ),
        .\FSM_sequential_current_state_reg[1]_0 (configReg_interface_inst_n_30),
        .\FSM_sequential_current_state_reg[2]_0 (configReg_interface_inst_n_16),
        .\FSM_sequential_current_state_reg[2]_1 (configReg_interface_inst_n_17),
        .Q(current_state__0),
        .Reset_not(Reset_not),
        .Reset_not_reg_0(Reset_not_i_1_n_0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(configReg_interface_inst_n_25),
        .S_AXI_ARESETN_1(configReg_interface_inst_n_28),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .SuperpixSel(SuperpixSel),
        .SuperpixSel_reg_0(SuperpixSel_i_1_n_0),
        .aw_en_reg(configReg_interface_inst_n_4),
        .aw_en_reg_0(aw_en_i_1_n_0),
        .axi_arready_reg(S_AXI_ARREADY),
        .axi_awready_reg(S_AXI_AWREADY),
        .axi_bvalid_reg(axi_bvalid_i_1_n_0),
        .\axi_rdata_reg[0] (ConfigClk_i_2_n_0),
        .\axi_rdata_reg[0]_0 (\axi_rdata[0]_i_1_n_0 ),
        .axi_rvalid_reg(axi_rvalid_i_1_n_0),
        .axi_wready_reg(S_AXI_WREADY),
        .\clk_counter_reg[2]_0 ({configReg_interface_inst_n_18,configReg_interface_inst_n_19,configReg_interface_inst_n_20}),
        .\clk_counter_reg[6]_0 (configReg_interface_inst_n_24),
        .mem_rddout_i(\axi4lite_interface_inst/mem_rddout_i ),
        .processing_fifo_data(processing_fifo_data),
        .processing_fifo_data_reg_0(configReg_interface_inst_n_8),
        .processing_fifo_data_reg_1(processing_fifo_data_i_1_n_0),
        .\reg1_reg[3]_0 ({p_0_in,p_0_in__0}),
        .\reg_rddin_reg[0][0]_0 (configReg_interface_inst_n_12),
        .\reg_rddin_reg[0][0]_1 (\reg_rddin[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAABBBAAAAA888)) 
    processing_fifo_data_i_1
       (.I0(processing_fifo_data),
        .I1(configReg_interface_inst_n_30),
        .I2(configReg_interface_inst_n_26),
        .I3(configReg_interface_inst_n_16),
        .I4(configReg_interface_inst_n_25),
        .I5(configReg_interface_inst_n_8),
        .O(processing_fifo_data_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_rddin[0][0]_i_1 
       (.I0(ConfigOut),
        .I1(configReg_interface_inst_n_28),
        .I2(configReg_interface_inst_n_12),
        .O(\reg_rddin[0][0]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_configReg_interface_0_0,configReg_interface_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "configReg_interface_top,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (SuperpixSel,
    ConfigClk,
    Reset_not,
    ConfigIn,
    ConfigLoad,
    ConfigOut,
    S_AXI_ACLK,
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
    S_AXI_RREADY);
  output SuperpixSel;
  output ConfigClk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 Reset_not RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Reset_not, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output Reset_not;
  output ConfigIn;
  output ConfigLoad;
  input ConfigOut;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input S_AXI_ACLK;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99990005, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire ConfigClk;
  wire ConfigIn;
  wire ConfigOut;
  wire Reset_not;
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
  wire [0:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire SuperpixSel;

  assign ConfigLoad = \<const0> ;
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
  assign S_AXI_RDATA[0] = \^S_AXI_RDATA [0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_configReg_interface_top inst
       (.ConfigClk_reg(ConfigClk),
        .ConfigIn(ConfigIn),
        .ConfigOut(ConfigOut),
        .Reset_not(Reset_not),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[10:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[10:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB[0]),
        .S_AXI_WVALID(S_AXI_WVALID),
        .SuperpixSel(SuperpixSel));
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
