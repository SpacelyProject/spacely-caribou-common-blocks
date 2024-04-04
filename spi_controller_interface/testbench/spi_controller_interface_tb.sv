// Testbench for spi_controller_interface

// Author: Luc Ah-Hot
// Last updated: 04/04/24

// To be connected with Xilinx AXI Verification IP (VIP) block and spi_controller_interface_top (DUT) 
// on a top block level in Vivado

`timescale 1ns/1ps

module spi_controller_interface_tb;

// Parameters to be used
parameter PERIOD = 10; //100MHz
parameter integer C_S_AXI_DATA_WIDTH = 32;
parameter integer C_S_AXI_ADDR_WIDTH = 11;
parameter integer FIFO_BUFFER_SIZE = 10;

//Tb Signals
logic mismatch; //Used to find mismatch in expected outputs
string testcase; //Test Description
integer testnum; //Test Identifier

//CLK Generation
logic clock;
always begin
  clock = 1'b0;
  #(PERIOD/2);
  clock = 1'b1;
  #(PERIOD/2);
end

// SPI wires 
logic poci, pico, cs_b, spi_clk;

// AXI VIP wires
logic           aclk;
logic           aresetn;
logic [10:0]    m_axi_awaddr;
logic [2:0]     m_axi_awprot;
logic           m_axi_awvalid;
logic           m_axi_awready;
logic [31:0]    m_axi_wdata;
logic [3:0]     m_axi_wstrb;
logic           m_axi_wvalid;
logic           m_axi_wready;
logic [1:0]     m_axi_bresp;
logic           m_axi_bvalid;
logic           m_axi_bready;
logic [10:0]    m_axi_araddr;
logic [2:0]     m_axi_arprot;
logic           m_axi_arvalid;
logic           m_axi_arready;
logic [31:0]    m_axi_rdata;
logic [1:0]     m_axi_rresp;
logic           m_axi_rvalid;
logic           m_axi_rready;

// [lucahhot]: Will toggle poci up and down for sample "data" from the SPI peripheral
always begin
  poci = 1'b0;
  #(PERIOD);
  poci = 1'b1;
  #(PERIOD);
end

// [lucahhot]: Initializing the AXI VIP master IP block (only have the stub)
axi_vip_0 axi_vip_inst (
    .aclk(clock),
    .aresetn(reset),
    .m_axi_awaddr(m_axi_awaddr),
    .m_axi_awprot(m_axi_awprot),
    .m_axi_awvalid(m_axi_awvalid),
    .m_axi_awready(m_axi_awready),
    .m_axi_wdata(m_axi_wdata),
    .m_axi_wstrb(m_axi_wstrb),
    .m_axi_wvalid(m_axi_wvalid),
    .m_axi_wready(m_axi_wready),
    .m_axi_bresp(m_axi_bresp),
    .m_axi_bvalid(m_axi_bvalid),
    .m_axi_bready(m_axi_bready),
    .m_axi_araddr(m_axi_araddr),
    .m_axi_arprot(m_axi_arprot),
    .m_axi_arvalid(m_axi_arvalid),
    .m_axi_arready(m_axi_arready),
    .m_axi_rdata(m_axi_rdata),
    .m_axi_rresp(m_axi_rresp),
    .m_axi_rvalid(m_axi_rvalid),
    .m_axi_rready(m_axi_rready)
);

// [lucahhot]: Initializing spi_controller_interface_top which will connect to axi_vip_0
spi_controller_interface_top #(
    .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
    .FIFO_BUFFER_SIZE(FIFO_BUFFER_SIZE)
) spi_controller_interface_top_inst (
    .poci(poci),
    .pico(pico),
    .cs_b(cs_b),
    .spi_clk(spi_clk),
    .S_AXI_ACLK(clock),
    .S_AXI_ARESETN(reset),
    .S_AXI_AWADDR(m_axi_awaddr),
    .S_AXI_AWPROT(m_axi_awprot),
    .S_AXI_AWVALID(m_axi_awvalid),
    .S_AXI_AWREADY(m_axi_awready),
    .S_AXI_WDATA(m_axi_wdata),
    .S_AXI_WSTRB(m_axi_wstrb),
    .S_AXI_WVALID(m_axi_wvalid),
    .S_AXI_WREADY(m_axi_wready),
    .S_AXI_BRESP(m_axi_bresp),
    .S_AXI_BVALID(m_axi_bvalid),
    .S_AXI_BREADY(m_axi_bready),
    .S_AXI_ARADDR(m_axi_araddr),
    .S_AXI_ARPROT(m_axi_arprot),
    .S_AXI_ARVALID(m_axi_arvalid),
    .S_AXI_ARREADY(m_axi_arready),
    .S_AXI_RDATA(m_axi_rdata),
    .S_AXI_RRESP(m_axi_rresp),
    .S_AXI_RVALID(m_axi_rvalid),
    .S_AXI_RREADY(m_axi_rready)
);

task initialize; //Intial Signal Values for Testbench
  begin
    //Internal Testbench Signals
    testcase = ".";
    testnum = 0;
    mismatch = 1'b0;

    //Reset
    reset_b = 1'b1;

  end 
endtask

initial begin
  initialize();
  //Test 0; Reset
  @(posedge clock);
  reset_b = 1'b0;
  @(posedge clock);
  reset_b = 1'b1;
  @(posedge clock);

  $finish;
end

endmodule