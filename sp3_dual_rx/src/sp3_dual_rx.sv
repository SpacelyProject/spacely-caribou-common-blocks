//
//        SPROCKET3 Dual Receiver Block
//            aquinn@fnal.gov -- 11/6/2024
//
//
// This block is a high-speed receiver built for the SPROCKET3 ASIC / SParkDream
// demonstration. It splits a 10.24 Gb/s data stream received over an SFP
// receiver into two dataframes which are processed independently by two
// lpgbt-derived Rx decoders.
//                                    |-> [uplink_a] -> [cdc_rx_a] -> UserData_a
// SFP Rx In -> [MGT] -> [SP3 Demux] -|
//                                    |-> [uplink_b] -> [cdc_rx_b] -> UserData_b
//



module sp3_dual_rx(

		   // SFP Data 
		   input logic 		SFP0_RX_P,
		   input logic 		SFP0_RX_N,

		   // -- Input Clocks -- 
		   // MGT REFCLK is a 320 MHz reference clock from a clock generator.
		   // This is used for basically the entire Rx datapath.
		   input logic 		SMA_MGT_REFCLK_P,
		   input logic 		SMA_MGT_REFCLK_N,

		   // USER CLOCK is a free-running reference clock from an oscillator.
		   // This is used only for reconfiguring the MGT IP via DRP, if that.
		   input logic 		USER_CLOCK_P,
		   input logic 		USER_CLOCK_N,


		   // -- 40 MHz Clock Domain Outputs --
		   output logic 	clk20_o,
		   
		   output logic 	uplinkrdy_a_o,
		   output logic 	uplinkFEC_a_o,
		   output logic [233:0] uplinkUserData_a, //Data frame incl. EC and IC
		   output logic [1:0] 	uplinkEcData_a,
		   output logic [1:0] 	uplinkIcData_a,
		   
		   output logic 	uplinkrdy_b_o,
		   output logic 	uplinkFEC_b_o,
		   output logic [233:0] uplinkUserData_b, //Data frame incl. EC and IC
		   output logic [1:0] 	uplinkEcData_b,
		   output logic [1:0] 	uplinkIcData_b,

		   // -- Config Settings & Inputs --
		   input logic 		mgt_rxpolarity_i,
		   input logic 		uplinkRst_i,
		   input logic 		fecBypass,
		   input logic 		interleaverBypass,
		   input logic 		scramblerBypass,
		   input logic 		pulse_bitslip_a,
		   input logic 		pulse_bitslip_b,

		   input logic  axi_clk,
		   output logic [7:0] status
);

   // -- MGT Signals --
   // These are direct inputs/outputs of the MGT
   logic 			mgt_rxrdy;

   // -- Misc signals --
   logic [31:0] mgt_usrword; //Raw (interleaved) usrword from the MGT.
   logic [31:0] mgtword_a, mgtword_b; //Word for A & B channels after de-interleave.
   logic bitslip_a, bitslip_b; //Bitslip control signals from A & B back to SP3_Demux.
   logic [233:0] uplinkData160_a, uplinkData160_b; //Output data frame, synchronized to 160M clock.
   logic [233:0] uplinkData20_a_o, uplinkData20_b_o; //Output data frame, synchronized to 20M clock.

   logic uplinkStrobe160_a, uplinkStrobe160_b;
   logic lpgbtfpga_uplinkRdy_a, lpgbtfpga_uplinkRdy_b; //Ready signals from each uplink channel.
   logic cdc_rx_a_ready, cdc_rx_b_ready; //Ready signals from CDC Rx -> uplink

   //These signals describe whether a FEC error occurred (and was corrected)
   //in UserData, Ec, or Ic.
   logic [229:0] uplinkDataCorrected_a, uplinkDataCorrected_b;
   logic [1:0]   uplinkIcCorrected_a, uplinkIcCorrected_b;
   logic [1:0]   uplinkEcCorrected_a, uplinkEcCorrected_b;

   // RESET SCHEME FOR THE UPLINK:
   // uplinkRst_i           => Resets MGT Rx (and SP3 Demux)
   // MGT Rx ready          => Resets uplink datapath
   // Uplink datapath ready => Resets User CDC Rx
   
   ///////////////////////////////
   //Clock Buffers and Dividers // 
   ///////////////////////////////

   logic 			MGT_RXCLK; //320 MHz clock from MGT.
   logic                        UPLINK_CLK;//160 MHz clock (MGT_RXCLK/2) 			
   logic MGT_FREEDRPCLK, MGT_REFCLK; //Reference clocks for the MGT

   //Input buffers for MGT_FREEDRPCLK and MGT_REFCLK

   IBUFGDS #(.IBUF_LOW_PWR(0), .IOSTANDARD("LVDS_25")
	     ) freedrpclk_ibufgds (.O(MGT_FREEDRPCLK),
				   .I(USER_CLOCK_P),
				   .IB(USER_CLOCK_N));

   IBUFDS_GTE4 #(.REFCLK_EN_TX_PATH(1'b0),
		  .REFCLK_HROW_CK_SEL(0),
		  .REFCLK_ICNTL_RX(0)
		  ) mgt_refclk_ibufgds(.O(MGT_REFCLK),
				       .ODIV2(),
				       .CEB(1'b0),
				       .I(SMA_MGT_REFCLK_P),
				       .IB(SMA_MGT_REFCLK_N));
   
				       			
   
   // Generate clk20 from 160MHz Uplink ref clock.
   BUFGCE_DIV #(.BUFGCE_DIVIDE(8)) clk20_div (.I(UPLINK_CLK),
					      .O(clk20_o),
					      .CE(1'b1),
					      .CLR(1'b0));


   ////////////////////////////////////////
   // Multi-Gigabit Transceiver IP (MGT) //
   ////////////////////////////////////////


   dr_gth_sub uGTH (.RX_P(SFP0_RX_P),
		    .RX_N(SFP0_RX_N),
		    .REFCLK_i(MGT_REFCLK),
		    .FREEDRPCLK_i(MGT_FREEDRPCLK),
		    .DIVCLK_o(),
		    .RX_RESET_i(uplinkRst_i),
		    .USER_DATA_o(mgt_usrword),
		    .RX_WORDCLK_o(MGT_RXCLK),
		    .RX_READY_o(mgt_rxrdy),
		    //DRP Debug Interface
		    .axi_clk(), //Todo: Will need to connect AXI Clk if we want to use DRP.
		    .dmonitor_data(),
		    .drp_addr(0),
		    .drp_di(0),
		    .drp_do(),
		    .drp_rst(0),
		    .drp_we(0),
		    .drp_trigger(0));
   
   /*
   xlx_ku_mgt_10g24 uMGT (.MGT_REFCLK_i(MGT_REFCLK),
		     .MGT_FREEDRPCLK_i(MGT_FREEDRPCLK),
		     .MGT_RXUSRCLK_o(MGT_RXCLK),
		     .MGT_TXUSRCLK_o(), //tx unused
		     .MGT_TXRESET_i(uplinkRst_i), //tx unused, but we need to reset it to
		                                  // successfully reset the Rx.
		     .MGT_RXRESET_i(uplinkRst_i),
		     .MGT_TXPolarity_i(1'b0), //tx unused
		     .MGT_RXPolarity_i(mgt_rxpolarity_i),
		     .MGT_RXSlide_i(1'b0), //RXslide is unused due to the custom
		                           //logic in SP3_demux
		     .MGT_ENTXCALIBIN_i(0),
		     .MGT_TXCALIB_i(0),
		     .MGT_TXREADY_o(), //tx unused
		     .MGT_RXREADY_o(mgt_rxrdy),
		     .MGT_TX_ALIGNED_o(),//tx unused
		     .MGT_TX_PIPHASE_o(),
		     .MGT_USRWORD_i(32'b0), //tx unused
		     .MGT_USRWORD_o(mgt_usrword),
		     .RXn_i(SFP0_RX_N),
		     .RXp_i(SFP0_RX_P),
		     .TXn_o(),//tx unused
		     .TXp_o());//tx unused*/

   //////////////
   //SP3 DEMUX //
   //////////////

   //SP3 Demux block splits mgt_usrword into mgtword_a and mgtword_b by de-interleaving.

   sp3_demux demux (.mgtclk(MGT_RXCLK),
		    .mgtword(mgt_usrword),
		    .reset(uplinkRst_i),
		    .mgtclk_div2(UPLINK_CLK),
		    .word_a(mgtword_a),
		    .word_b(mgtword_b),
		    .bitslip_a(bitslip_a || pulse_bitslip_a),
		    .bitslip_b(bitslip_b || pulse_bitslip_b)
		    );
   

   //////////////////
   // UPLINK A & B //
   //////////////////
   
   lpgbtfpga_uplink #(.DATARATE(2), //1 = 5G12, 2 = 10G24
		      .FEC(1), //1 = FEC5, 2 = FEC12
		      .c_multicyleDelay(3), //Typo inherited from lpGBT-FPGA :P
		      .c_clockRatio(8),
		      .c_mgtWordWidth(32),
		      .c_allowedFalseHeader(5),
		      .c_allowedFalseHeaderOverN(64),
		      .c_requiredTrueHeader(30),
		      .c_bitslip_mindly(2),
		      .c_bitslip_waitdly(40)
		      ) uplink_a (.uplinkClk_i(UPLINK_CLK),
			      .uplinkClkOutEn_o(uplinkStrobe160_a),
			      .uplinkRst_n_i(mgt_rxrdy),
			      .mgt_word_i(mgtword_a), //From demux
			      .userData_o(uplinkData160_a[229:0]),
			      .EcData_o(uplinkData160_a[231:230]),
			      .IcData_o(uplinkData160_a[233:232]),
			      .bypassInterleaver_i(interleaverBypass), 
			      .bypassFECEncoder_i(fecBypass),
			      .bypassScrambler_i(scramblerBypass),
			      .mgt_bitslipCtrl_o(bitslip_a),
			      .dataCorrected_o(uplinkDataCorrected_a),
			      .IcCorrected_o(uplinkIcCorrected_a),
			      .EcCorrected_o(uplinkEcCorrected_a),
			      .rdy_o(lpgbtfpga_uplinkRdy_a),
			      .frameAlignerEven_o());//unused

   lpgbtfpga_uplink #(.DATARATE(2), //1 = 5G12, 2 = 10G24
		      .FEC(1), //1 = FEC5, 2 = FEC12
		      .c_multicyleDelay(3), //Typo inherited from lpGBT-FPGA :P
		      .c_clockRatio(8),
		      .c_mgtWordWidth(32),
		      .c_allowedFalseHeader(5),
		      .c_allowedFalseHeaderOverN(64),
		      .c_requiredTrueHeader(30),
		      .c_bitslip_mindly(2),
		      .c_bitslip_waitdly(40)
		      ) uplink_b (.uplinkClk_i(UPLINK_CLK),
			      .uplinkClkOutEn_o(uplinkStrobe160_b),
			      .uplinkRst_n_i(mgt_rxrdy),
			      .mgt_word_i(mgtword_b), //From demux
			      .userData_o(uplinkData160_b[229:0]),
			      .EcData_o(uplinkData160_b[231:230]),
			      .IcData_o(uplinkData160_b[233:232]),
			      .bypassInterleaver_i(interleaverBypass),
			      .bypassFECEncoder_i(fecBypass),
			      .bypassScrambler_i(scramblerBypass),
			      .mgt_bitslipCtrl_o(bitslip_b),
			      .dataCorrected_o(uplinkDataCorrected_b),
			      .IcCorrected_o(uplinkIcCorrected_b),
			      .EcCorrected_o(uplinkEcCorrected_b),
			      .rdy_o(lpgbtfpga_uplinkRdy_b),
			      .frameAlignerEven_o());//unused

   
   // -- FEC Error Logic --
   // If the EC, IC, or user data is corrected by FEC, then assert the FEC flag.
   always @(posedge MGT_RXCLK) begin
      if(uplinkDataCorrected_a>0 || uplinkIcCorrected_a>0 || uplinkEcCorrected_a>0)
	uplinkFEC_a_o <= 1'b1;
      else
	uplinkFEC_a_o <= 1'b0;
      if(uplinkDataCorrected_b>0 || uplinkIcCorrected_b>0 || uplinkEcCorrected_b>0)
	uplinkFEC_b_o <= 1'b1;
      else
       uplinkFEC_b_o <= 1'b0;
   end
   
   

   // Modules to add:
   // - lpgbtfpga-uplink
   // - sp3_demux
   // - cdc_rx
   // - mgt IP
   // - mgt IP reset synchronizer (?)

   //This block exists to ensure that the user data, which is coming from the 320 MHz domain,
   //is actually aligned to the 40 MHz output clock. 
   
   logic [2:0] uplinkPhase_a_o, uplinkPhase_b_o;
   
   cdc_rx #(.g_CLOCK_A_RATIO(8), //Frequency ratio between slow and fast frequencies
	    .g_PHASE_SIZE(3) //log2(g_CLOCK_A_RATIO)
	    ) cdc_rx_a_inst (// Interface A: 160 MHz, input to CDC
			   .reset_a_i(~lpgbtfpga_uplinkRdy_a),
			   .clk_a_i(UPLINK_CLK),
			   .data_a_i(uplinkData160_a),
			   .strobe_a_i(uplinkStrobe160_a),
			   // Interface B: 20 MHz, output of CDC
			   .clk_b_i(clk20_o),
			   .data_b_o(uplinkData20_a_o),
			   .strobe_b_i(1'b1),
			   .ready_b_o(cdc_rx_a_ready),
			   // Phase-related signals
			   .phase_o(uplinkPhase_a_o),
			   .phase_calib_i(0), //Unused
			   .phase_force_i(0));//Unused
   
	
   cdc_rx #(.g_CLOCK_A_RATIO(8), //Frequency ratio between slow and fast frequencies
	    .g_PHASE_SIZE(3) //log2(g_CLOCK_A_RATIO)
	    ) cdc_rx_b_inst (// Interface A: 160 MHz, input to CDC
			   .reset_a_i(~lpgbtfpga_uplinkRdy_b),
			   .clk_a_i(UPLINK_CLK),
			   .data_a_i(uplinkData160_b),
			   .strobe_a_i(uplinkStrobe160_b),
			   // Interface B: 20 MHz, output of CDC
			   .clk_b_i(clk20_o),
			   .data_b_o(uplinkData20_b_o),
			   .strobe_b_i(1'b1),
			   .ready_b_o(cdc_rx_b_ready),
			   // Phase-related signals
			   .phase_o(uplinkPhase_b_o),
			   .phase_calib_i(0), //Unused
			   .phase_force_i(0));//Unused				   

   assign uplinkUserData_a = uplinkData20_a_o;
   assign uplinkIcData_a = uplinkData20_a_o[233:232];
   assign uplinkEcData_a = uplinkData20_a_o[231:230];
   
   assign uplinkUserData_b = uplinkData20_b_o;
   assign uplinkIcData_b = uplinkData20_b_o[233:232];
   assign uplinkEcData_b = uplinkData20_b_o[231:230];

   //The CDC is the last stage in the pipeline. Therefore the
   //  CDC ready signal indicates the whole uplink chain is ready.
   assign uplinkrdy_a_o = cdc_rx_a_ready;
   assign uplinkrdy_b_o = cdc_rx_b_ready;
   

   // STATUS OUTPUTS

   logic [7:0] status_clk20;

   assign status_clk20[0] = lpgbtfpga_uplinkRdy_a;
   assign status_clk20[1] = lpgbtfpga_uplinkRdy_b;
   assign status_clk20[2] = mgt_rxrdy;
   assign status_clk20[7:3] = 5'b0;


   xpm_cdc_array_single #(.WIDTH(8)) cdc_uplinkIc (
    .dest_out(status),
    .dest_clk(axi_clk),
    .src_in(status_clk20),
    .src_clk(clk20_o));

endmodule // sp3_dual_rx
