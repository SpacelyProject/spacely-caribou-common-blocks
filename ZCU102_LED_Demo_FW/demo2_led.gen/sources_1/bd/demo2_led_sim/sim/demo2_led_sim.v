//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Tue Apr  9 15:38:13 2024
//Host        : metal.fnal.gov running 64-bit unknown
//Command     : generate_target demo2_led_sim.bd
//Design      : demo2_led_sim
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "demo2_led_sim,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=demo2_led_sim,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "demo2_led_sim.hwdef" *) 
module demo2_led_sim
   (GPIO_1_tri_i,
    GPIO_1_tri_o,
    GPIO_1_tri_t,
    clk_100MHz,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_1 " *) input [31:0]GPIO_1_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_1 " *) output [31:0]GPIO_1_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_1 " *) output [31:0]GPIO_1_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN demo2_led_sim_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;

  wire [31:0]Net;
  wire [31:0]axi_gpio_1_GPIO_TRI_I;
  wire [31:0]axi_gpio_1_GPIO_TRI_O;
  wire [31:0]axi_gpio_1_GPIO_TRI_T;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [1:0]axi_vip_0_M_AXI_ARBURST;
  wire [3:0]axi_vip_0_M_AXI_ARCACHE;
  wire [7:0]axi_vip_0_M_AXI_ARLEN;
  wire [0:0]axi_vip_0_M_AXI_ARLOCK;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire [3:0]axi_vip_0_M_AXI_ARQOS;
  wire axi_vip_0_M_AXI_ARREADY;
  wire [3:0]axi_vip_0_M_AXI_ARREGION;
  wire [2:0]axi_vip_0_M_AXI_ARSIZE;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [1:0]axi_vip_0_M_AXI_AWBURST;
  wire [3:0]axi_vip_0_M_AXI_AWCACHE;
  wire [7:0]axi_vip_0_M_AXI_AWLEN;
  wire [0:0]axi_vip_0_M_AXI_AWLOCK;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire [3:0]axi_vip_0_M_AXI_AWQOS;
  wire axi_vip_0_M_AXI_AWREADY;
  wire [3:0]axi_vip_0_M_AXI_AWREGION;
  wire [2:0]axi_vip_0_M_AXI_AWSIZE;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RLAST;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WLAST;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [31:0]axi_vip_0_axi_periph_M00_AXI_ARADDR;
  wire axi_vip_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]axi_vip_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]axi_vip_0_axi_periph_M00_AXI_AWADDR;
  wire axi_vip_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]axi_vip_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]axi_vip_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]axi_vip_0_axi_periph_M00_AXI_BRESP;
  wire axi_vip_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]axi_vip_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]axi_vip_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]axi_vip_0_axi_periph_M00_AXI_RRESP;
  wire axi_vip_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]axi_vip_0_axi_periph_M00_AXI_WDATA;
  wire axi_vip_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]axi_vip_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]axi_vip_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]axi_vip_0_axi_periph_M01_AXI_ARADDR;
  wire axi_vip_0_axi_periph_M01_AXI_ARREADY;
  wire [0:0]axi_vip_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]axi_vip_0_axi_periph_M01_AXI_AWADDR;
  wire axi_vip_0_axi_periph_M01_AXI_AWREADY;
  wire [0:0]axi_vip_0_axi_periph_M01_AXI_AWVALID;
  wire [0:0]axi_vip_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]axi_vip_0_axi_periph_M01_AXI_BRESP;
  wire axi_vip_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]axi_vip_0_axi_periph_M01_AXI_RDATA;
  wire [0:0]axi_vip_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]axi_vip_0_axi_periph_M01_AXI_RRESP;
  wire axi_vip_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]axi_vip_0_axi_periph_M01_AXI_WDATA;
  wire axi_vip_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]axi_vip_0_axi_periph_M01_AXI_WSTRB;
  wire [0:0]axi_vip_0_axi_periph_M01_AXI_WVALID;
  wire clk_100MHz_1;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire reset_1;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;

  assign GPIO_1_tri_o[31:0] = axi_gpio_1_GPIO_TRI_O;
  assign GPIO_1_tri_t[31:0] = axi_gpio_1_GPIO_TRI_T;
  assign axi_gpio_1_GPIO_TRI_I = GPIO_1_tri_i[31:0];
  assign clk_100MHz_1 = clk_100MHz;
  assign reset_1 = reset;
  demo2_led_sim_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(Net),
        .gpio_io_o(Net),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(axi_vip_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_arready(axi_vip_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_vip_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_vip_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_vip_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_vip_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(axi_vip_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(axi_vip_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(axi_vip_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(axi_vip_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(axi_vip_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(axi_vip_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(axi_vip_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(axi_vip_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(axi_vip_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(axi_vip_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_vip_0_axi_periph_M00_AXI_WVALID));
  demo2_led_sim_axi_gpio_1_0 axi_gpio_1
       (.gpio_io_i(axi_gpio_1_GPIO_TRI_I),
        .gpio_io_o(axi_gpio_1_GPIO_TRI_O),
        .gpio_io_t(axi_gpio_1_GPIO_TRI_T),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(axi_vip_0_axi_periph_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_arready(axi_vip_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_vip_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_vip_0_axi_periph_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_vip_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_vip_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(axi_vip_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(axi_vip_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(axi_vip_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(axi_vip_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(axi_vip_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(axi_vip_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(axi_vip_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(axi_vip_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(axi_vip_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(axi_vip_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_vip_0_axi_periph_M01_AXI_WVALID));
  demo2_led_sim_axi_vip_0_0 axi_vip_0
       (.aclk(clk_wiz_clk_out1),
        .aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_0_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_0_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_0_M_AXI_RLAST),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_0_M_AXI_WLAST),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  demo2_led_sim_axi_vip_0_axi_periph_0 axi_vip_0_axi_periph
       (.ACLK(clk_wiz_clk_out1),
        .ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_ACLK(clk_wiz_clk_out1),
        .M00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_AXI_araddr(axi_vip_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_vip_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_vip_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_vip_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_vip_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_vip_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_vip_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_vip_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_vip_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_vip_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(axi_vip_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_vip_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_vip_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_vip_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(axi_vip_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_vip_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_vip_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_clk_out1),
        .M01_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M01_AXI_araddr(axi_vip_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_vip_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_vip_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_vip_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_vip_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_vip_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_vip_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_vip_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_vip_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_vip_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(axi_vip_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_vip_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_vip_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_vip_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(axi_vip_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_vip_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_vip_0_axi_periph_M01_AXI_WVALID),
        .S00_ACLK(clk_wiz_clk_out1),
        .S00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .S00_AXI_araddr(axi_vip_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_0_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_0_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_0_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_0_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_0_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_0_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_0_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_0_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_0_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_0_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_0_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_0_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_0_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_0_M_AXI_WVALID));
  demo2_led_sim_clk_wiz_0 clk_wiz
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .reset(reset_1));
  demo2_led_sim_ila_0_0 ila_0
       (.clk(clk_wiz_clk_out1),
        .probe0(Net),
        .probe1(Net),
        .probe2(Net),
        .probe3(Net),
        .probe4(Net),
        .probe5(Net),
        .probe6(Net),
        .probe7(Net));
  demo2_led_sim_rst_clk_wiz_100M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
endmodule

module demo2_led_sim_axi_vip_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire axi_vip_0_axi_periph_ACLK_net;
  wire axi_vip_0_axi_periph_ARESETN_net;
  wire [31:0]axi_vip_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]axi_vip_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]axi_vip_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [7:0]axi_vip_0_axi_periph_to_s00_couplers_ARLEN;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]axi_vip_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]axi_vip_0_axi_periph_to_s00_couplers_ARQOS;
  wire axi_vip_0_axi_periph_to_s00_couplers_ARREADY;
  wire [3:0]axi_vip_0_axi_periph_to_s00_couplers_ARREGION;
  wire [2:0]axi_vip_0_axi_periph_to_s00_couplers_ARSIZE;
  wire axi_vip_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]axi_vip_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]axi_vip_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]axi_vip_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [7:0]axi_vip_0_axi_periph_to_s00_couplers_AWLEN;
  wire [0:0]axi_vip_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]axi_vip_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]axi_vip_0_axi_periph_to_s00_couplers_AWQOS;
  wire axi_vip_0_axi_periph_to_s00_couplers_AWREADY;
  wire [3:0]axi_vip_0_axi_periph_to_s00_couplers_AWREGION;
  wire [2:0]axi_vip_0_axi_periph_to_s00_couplers_AWSIZE;
  wire axi_vip_0_axi_periph_to_s00_couplers_AWVALID;
  wire axi_vip_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]axi_vip_0_axi_periph_to_s00_couplers_BRESP;
  wire axi_vip_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]axi_vip_0_axi_periph_to_s00_couplers_RDATA;
  wire axi_vip_0_axi_periph_to_s00_couplers_RLAST;
  wire axi_vip_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]axi_vip_0_axi_periph_to_s00_couplers_RRESP;
  wire axi_vip_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]axi_vip_0_axi_periph_to_s00_couplers_WDATA;
  wire axi_vip_0_axi_periph_to_s00_couplers_WLAST;
  wire axi_vip_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]axi_vip_0_axi_periph_to_s00_couplers_WSTRB;
  wire axi_vip_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_vip_0_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_axi_vip_0_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_axi_vip_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_axi_vip_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_axi_vip_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_axi_vip_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_axi_vip_0_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_axi_vip_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_axi_vip_0_axi_periph_ARADDR;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_ARREADY;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_axi_vip_0_axi_periph_AWADDR;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_AWREADY;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_AWVALID;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_axi_vip_0_axi_periph_BRESP;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_axi_vip_0_axi_periph_RDATA;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_axi_vip_0_axi_periph_RRESP;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_axi_vip_0_axi_periph_WDATA;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_axi_vip_0_axi_periph_WSTRB;
  wire [0:0]m01_couplers_to_axi_vip_0_axi_periph_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_vip_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi_vip_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_vip_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi_vip_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi_vip_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi_vip_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi_vip_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi_vip_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi_vip_0_axi_periph_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi_vip_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi_vip_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi_vip_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi_vip_0_axi_periph_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi_vip_0_axi_periph_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi_vip_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_vip_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_vip_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi_vip_0_axi_periph_WVALID;
  assign S00_AXI_arready = axi_vip_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_vip_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_vip_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_vip_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_vip_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_vip_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_vip_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_vip_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_vip_0_axi_periph_to_s00_couplers_WREADY;
  assign axi_vip_0_axi_periph_ACLK_net = ACLK;
  assign axi_vip_0_axi_periph_ARESETN_net = ARESETN;
  assign axi_vip_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_vip_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_vip_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_vip_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_vip_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_vip_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_vip_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_vip_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi_vip_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi_vip_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_vip_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi_vip_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi_vip_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_vip_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi_vip_0_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi_vip_0_axi_periph_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi_vip_0_axi_periph_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi_vip_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_vip_0_axi_periph_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi_vip_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_vip_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_vip_0_axi_periph_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi_vip_0_axi_periph_WREADY = M01_AXI_wready[0];
  m00_couplers_imp_7NWD10 m00_couplers
       (.M_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_vip_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi_vip_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi_vip_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_vip_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi_vip_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi_vip_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_vip_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_vip_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_vip_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_vip_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_axi_vip_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_vip_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_vip_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_vip_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_axi_vip_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_vip_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_vip_0_axi_periph_WVALID),
        .S_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_ZRT1Y8 m01_couplers
       (.M_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi_vip_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_vip_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_vip_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_vip_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_vip_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_vip_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_vip_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_vip_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_vip_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_vip_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_vip_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_vip_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_vip_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_vip_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_vip_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_vip_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_vip_0_axi_periph_WVALID),
        .S_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_17FLAJ s00_couplers
       (.M_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .M_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_vip_0_axi_periph_ACLK_net),
        .S_ARESETN(axi_vip_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(axi_vip_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_vip_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_vip_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_vip_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_vip_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_vip_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_vip_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_vip_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_vip_0_axi_periph_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_vip_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_vip_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_vip_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_vip_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_vip_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_vip_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_vip_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_vip_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_vip_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_vip_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_vip_0_axi_periph_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_vip_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_vip_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_vip_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_vip_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_vip_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_vip_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_vip_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_vip_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_vip_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_vip_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_vip_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_vip_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_vip_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_vip_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_vip_0_axi_periph_to_s00_couplers_WVALID));
  demo2_led_sim_xbar_0 xbar
       (.aclk(axi_vip_0_axi_periph_ACLK_net),
        .aresetn(axi_vip_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_7NWD10
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_ZRT1Y8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_17FLAJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [3:0]s00_couplers_to_auto_pc_ARREGION;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  demo2_led_sim_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule
