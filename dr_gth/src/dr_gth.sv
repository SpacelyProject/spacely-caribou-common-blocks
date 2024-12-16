//
//  Dynamically Reconfigurable GTH Module (dr_gth)
//        Adam Quinn -- 9/18/2024
//

module dr_gth(
    /* High-Speed Input Data */
    input logic     RX_P,
    input logic     RX_N,

    /* Clocks */
    input logic     axi_clk,
    input logic     REFCLK_p,
    input logic     REFCLK_n, //Global refclk for the GTH common & channel
    input logic     FREEDRPCLK_p,
    input logic     FREEDRPCLK_n,

    output logic    DIVCLK_o,

    /* Reset */
    input logic     RX_RESET_i,

    /* Output User Data */
    output logic [31:0] USER_DATA_o,
    output logic        RX_WORDCLK_o,

    /* Debug */
    output logic [15:0] dmonitor_data,


    input  logic [8:0]  drp_addr,
    input  logic [15:0] drp_di,
    output logic [15:0] drp_do,
    input  logic        drp_rst,
    input  logic        drp_we,
    input  logic        drp_trigger

  );


  logic        rx_reset_done, rx_reset_sig;

  logic        drp_trigger_drpclk, drp_en;
  logic  [3:0]     drp_en_counter;


  ///////////////////////////////////
  // Input Reference Clock Buffers //
  ///////////////////////////////////
  logic REFCLK_i, FREEDRPCLK_i;


  IBUFDS_GTE4 mgtRefClkBuf(.O(REFCLK_i),
    .I(REFCLK_p),
    .IB(REFCLK_n),
    .CEB(0));

  IBUFGDS #(.IBUF_LOW_PWR(0), .IOSTANDARD("LVDS_25")) freeDrpClkBuf (.O(FREEDRPCLK_i),
    .I(FREEDRPCLK_p),
    .IB(FREEDRPCLK_n));

  BUFGCE_DIV #(.BUFGCE_DIVIDE(8)) uBufgceDiv (.I(REFCLK_i),
    .O(DIVCLK_o),
    .CE(1),
    .CLR(0));




  //////////////////////////////////
  // TX & RX Datapath Reset Logic //
  //////////////////////////////////


  // rx_active and tx_active signals should be asserted on the first rx_wordclk edge that
  // follows the PMA (Physical Medium Attachment sublayer) reset being deasserted.

  logic        userclk_tx_reset_int, userclk_rx_reset_int;
  logic        userclk_tx_active_int, userclk_rx_active_int;
  logic        buffbypass_rx_reset_in;



  assign userclk_tx_reset_int = !txpmaresetdone;
  assign userclk_rx_reset_int = !rxpmaresetdone;

  always @(posedge userclk_tx_reset_int, posedge rx_wordclk) begin
    if(userclk_tx_reset_int)
      userclk_tx_active_int <= 0;
    else
      userclk_tx_active_int <= 1;
  end

  always @(posedge userclk_rx_reset_int, posedge rx_wordclk) begin
    if(userclk_rx_reset_int)
      userclk_rx_active_int <= 0;
    else
      userclk_rx_active_int <= 1;
  end

  gtwizard_ultrascale_v1_7_13_reset_synchronizer rst_sync (.clk_in(rx_wordclk),
    .rst_in(!userclk_rx_active_int),
    .rst_out(buffbypass_rx_reset_in));


  ///////////////////////////
  //  RX Clock Loopback    //
  ///////////////////////////

  //Outclk is looped back to serve as wordclock.

  BUFG_GT rx_wordclk_buf(.I(rx_outclk),
    .O(rx_wordclk),
    .CE(rxpmaresetdone),
    .DIV(0),
    .CLR(0),
    .CLRMASK(0),
    .CEMASK(0));


  assign RX_WORDCLK_o = rx_wordclk;



  //////////////////
  // Xilinx IP    //
  //////////////////

  gtwizard_ultrascale_0 gth_ip(
    .gtwiz_userclk_tx_active_in(userclk_tx_active_int),
    .gtwiz_userclk_rx_active_in(userclk_rx_active_int),
    .rxpmaresetdone_out(rxpmaresetdone),
    .txpmaresetdone_out(txpmaresetdone),

    .gtwiz_buffbypass_rx_reset_in(buffbypass_rx_reset_in),
    .gtwiz_buffbypass_rx_start_user_in(0),
    .gtwiz_buffbypass_rx_done_out(),
    .gtwiz_buffbypass_rx_error_out(),

    .gtwiz_reset_all_in(0),

    .gtwiz_reset_rx_pll_and_datapath_in(0),
    .gtwiz_reset_rx_datapath_in(rx_reset_sig),
    .gtwiz_reset_rx_cdr_stable_out(),

    .qpll0outclk_out(),
    .qpll0outrefclk_out(),


    .gtwiz_reset_rx_done_out(rx_reset_done),

    /* Receiver High-Speed Interface */
    .gthrxn_in(RX_N),
    .gthrxp_in(RX_P),

    .gtrefclk00_in(REFCLK_i),
    .gtwiz_reset_clk_freerun_in(FREEDRPCLK_i), //Ext free-running clock


    /* Receiver Low-Speed Interface */
    .gtwiz_userdata_rx_out(USER_DATA), //32b output word

    .rxoutclk_out(rx_outclk),
    .rxusrclk_in(rx_wordclk),
    .rxusrclk2_in(rx_wordclk),
    .txusrclk_in(rx_wordclk),
    .txusrclk2_in(rx_wordclk),

    /* DMONITOR Interface */
    .dmonitorclk_in(FREEDRPCLK_i),
    .dmonitorout_out(dmonitor_data),

    /* DRP Interface */
    .drpclk_in(FREEDRPCLK_i), //Use external free-running clk for DRP
    .drpaddr_in(drp_addr),

    .drpdi_in(drp_di),
    .drpen_in(drp_en),
    .drpwe_in(drp_we),
    .drpdo_out(drp_do),
    .drprdy_out(),

    .pcsrsvdin_in(drp_rst),


    /* Tx-related inputs and outputs which we don't care about */
    .gtwiz_reset_tx_pll_and_datapath_in(0),
    .gtwiz_reset_tx_datapath_in(0),
    .gtwiz_userdata_tx_in(0),
    .gtwiz_reset_tx_done_out(),
    .gthtxn_out(),
    .gthtxp_out(),
    .gtpowergood_out(),
    .txoutclk_out()
  );



  ///////////////////////
  // DRP Controller    //
  ///////////////////////

  // The dynamic recongifuration port allows attributes of the
  // GTH to be reconfigured at runtime. This controller allows
  // us to read/write to DRP using our standard AXI controls.
  // At a minimum, this is necessary to use the DMONITOR to
  // debug the GTH.

  // Use CDC to cross from AXI to DRP domain.
  xpm_cdc_single cdc_drp (.dest_out(drp_trigger_drpclk),
    .dest_clk(FREEDRPCLK_i),
    .src_clk(axi_clk),
    .src_in(drp_trigger));


  // Add a hysteresis counter to ensure that drp_en only fires for 1 cycle, even if drp_trigger_drpclk
  // is longer.
  always @(posedge FREEDRPCLK_i) begin
    if(!drp_trigger_drpclk) begin
      drp_en <= 0;
      drp_en_counter <= 4'b0;
    end
    else
      if (drp_en_counter == 0) begin
        drp_en <= 1;
        drp_en_counter <= 4'b1111;
      end
      else begin
        drp_en <= 0;
        drp_en_counter <= drp_en_counter - 1;
      end
  end // always @ (posedge FREEDRPCLK_i)




endmodule // dr_gth
