module store_dataframe # (

    parameter C_S_AXI_DATA_WIDTH = 32,  // AXI Data Bus Width
    parameter C_S_AXI_ADDR_WIDTH = 11,  // AXI Address Bus Width
    parameter FPGA_REGISTER_N    = 10

)(
    
    // SIGNALS FROM LPGBT
    input wire [233:0]                          uplinkUserData_i,
    input wire                                  uplinkrdy_i,
    input wire                                  clk40_i,

    //////////////////////////////
	//    AXI BUS SIGNALS       //
	//////////////////////////////

    // Global Signals
    input wire                                  S_AXI_ACLK,
    input wire                                  S_AXI_ARESETN,

    // Write Address Channel
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0]       S_AXI_AWADDR,   // Write Address
    input wire [2 : 0]                          S_AXI_AWPROT,   // Write Protection
    input wire                                  S_AXI_AWVALID,  // Write Address Valid
    output wire                                 S_AXI_AWREADY,  // Write Address Channel Ready

    // Write Data Channel
    input wire [C_S_AXI_DATA_WIDTH-1 : 0]       S_AXI_WDATA,    // Write Data
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0]   S_AXI_WSTRB,    // Write Strobe
    input wire                                  S_AXI_WVALID,   // Write Data Valid
    output wire                                 S_AXI_WREADY,   // Write Data Channel Ready

    // Write Response Channel
    output wire [1 : 0]                         S_AXI_BRESP,    // Write Response
    output wire                                 S_AXI_BVALID,   // Write Response Valid
    input wire                                  S_AXI_BREADY,   // Write Response Channel Ready

    // Read Address Channel
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0]       S_AXI_ARADDR,   // Read Address
    input wire [2 : 0]                          S_AXI_ARPROT,   // Read Protection
    input wire                                  S_AXI_ARVALID,  // Read Address Valid
    output wire                                 S_AXI_ARREADY,  // Read Address Channel Ready

    // Read Data Channel
    output wire [C_S_AXI_DATA_WIDTH-1 : 0]      S_AXI_RDATA,    // Ready Data
    output wire [1 : 0]                         S_AXI_RRESP,    // Read Response
    output wire                                 S_AXI_RVALID,   // Read Data Valid
    input wire                                  S_AXI_RREADY    // Read Data Channel Ready
    
    );

    // AXI Interface Signals
    wire [C_S_AXI_DATA_WIDTH-1:0]               reg_wrdout;
    wire [((C_S_AXI_DATA_WIDTH-1)/8):0]         reg_wrByteStrobe    [FPGA_REGISTER_N-1:0];
    wire                                        reg_rdStrobe        [FPGA_REGISTER_N-1:0];
    wire [C_S_AXI_DATA_WIDTH-1:0]               reg_rddin           [FPGA_REGISTER_N-1:0];

    // FIFO Signals
    wire            fifo_rd_en;
    reg             rdStrobe_buffer;
    reg             lpgbt_rd_en[2:0];
    wire            fifo_wr_en;
    wire [233:0]    dout;
    wire            full;
    wire            empty;

    assign fifo_rd_en = ~rdStrobe_buffer & reg_rdStrobe[9];

    assign fifo_wr_en = uplinkrdy_i & lpgbt_rd_en[2];

    // negated reset signal
    wire RST;
    assign RST = ~S_AXI_ARESETN;

    // AXI Registers
    // 0 : control signals
    // 1 : status signals
    // 2 : dataframe[ 31:  0]
    // 3 : dataframe[ 63: 32]
    // 4 : dataframe[ 95: 64]
    // 5 : dataframe[127: 96]
    // 6 : dataframe[159:128]
    // 7 : dataframe[191:160]
    // 8 : dataframe[223:192]
    // 9 : dataframe[233:224] (zero extended)

    // NOTE: FIFO is advanced every time register 9 is read

    assign reg_rddin[0] = {{31{1'b0}}, lpgbt_rd_en[2]};
    assign reg_rddin[1] = {{30{1'b0}}, full, empty};
    assign reg_rddin[2] = dout[ 31:  0];
    assign reg_rddin[3] = dout[ 63: 32];
    assign reg_rddin[4] = dout[ 95: 64];
    assign reg_rddin[5] = dout[127: 96];
    assign reg_rddin[6] = dout[159:128];
    assign reg_rddin[7] = dout[191:160];
    assign reg_rddin[8] = dout[223:192];
    assign reg_rddin[9] = {{22{1'b0}}, dout[233:224]};
    
    always @ (posedge S_AXI_ACLK) begin

        if (!S_AXI_ARESETN) begin

            lpgbt_rd_en[0] <= 0;
            rdStrobe_buffer <= 0;

        end else begin

            if(reg_wrByteStrobe[0][0] == 1) lpgbt_rd_en[0] <= reg_wrdout[0];

            rdStrobe_buffer <= reg_rdStrobe[9];

        end

    end

    always @ (posedge clk40_i) begin

        lpgbt_rd_en[2] <= lpgbt_rd_en[1];
        lpgbt_rd_en[1] <= lpgbt_rd_en[0];

    end

    axi4lite_interface_top #(
        .C_S_AXI_DATA_WIDTH (C_S_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH (C_S_AXI_ADDR_WIDTH),
        .FPGA_REGISTER_N    (FPGA_REGISTER_N)
    ) AXI0 (
        
        ///////////////////////////
        // REG INTERFACE SIGNALS //
        ///////////////////////////
	
        .reg_wrdout          (reg_wrdout),
        .reg_wrByteStrobe    (reg_wrByteStrobe),
        .reg_rdStrobe        (reg_rdStrobe),
        .reg_rddin           (reg_rddin),
	
        //////////////////////////////
        //    AXI BUS SIGNALS       //
        //////////////////////////////
	
        .S_AXI_ACLK     (S_AXI_ACLK),
        .S_AXI_ARESETN  (S_AXI_ARESETN),
        .S_AXI_AWADDR   (S_AXI_AWADDR),
        .S_AXI_AWPROT   (S_AXI_AWPROT),
        .S_AXI_AWVALID  (S_AXI_AWVALID),
        .S_AXI_AWREADY  (S_AXI_AWREADY),
        .S_AXI_WDATA    (S_AXI_WDATA),
        .S_AXI_WSTRB    (S_AXI_WSTRB),
        .S_AXI_WVALID   (S_AXI_WVALID),
        .S_AXI_WREADY   (S_AXI_WREADY),
        .S_AXI_BRESP    (S_AXI_BRESP),
        .S_AXI_BVALID   (S_AXI_BVALID),
        .S_AXI_BREADY   (S_AXI_BREADY),
        .S_AXI_ARADDR   (S_AXI_ARADDR),
        .S_AXI_ARPROT   (S_AXI_ARPROT),
        .S_AXI_ARVALID  (S_AXI_ARVALID),
        .S_AXI_ARREADY  (S_AXI_ARREADY),
        .S_AXI_RDATA    (S_AXI_RDATA),
        .S_AXI_RRESP    (S_AXI_RRESP),
        .S_AXI_RVALID   (S_AXI_RVALID),
        .S_AXI_RREADY   (S_AXI_RREADY)

	);

    dataframe_fifo DF_FIFO (
        .wr_clk         (clk40_i),          // input wire wr_clk
        .wr_en          (fifo_wr_en),       // input wire wr_en
        .din            (uplinkUserData_i), // input wire [21 : 0] din
        .full           (full),             // output wire full

        .rd_clk         (S_AXI_ACLK),       // input wire rd_clk
        .rd_en          (reg_rdStrobe[9]),  // input wire rd_en
        .dout           (dout),             // output wire [21 : 0] dout
        .empty          (empty),            // output wire empty

        .rst            (RST),              // input wire rst
        .wr_rst_busy    (),                 // output wire wr_rst_busy
        .rd_rst_busy    ()                  // output wire rd_rst_busy
    );

endmodule


