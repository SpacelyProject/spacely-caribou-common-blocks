-------------------------------------------------------
--! @file
--! @author Julian Mendez <julian.mendez@cern.ch> (CERN - EP-ESE-BE)
--! @version 2.0
--! @brief LpGBT-FPGA Top
-------------------------------------------------------

--! Include the IEEE VHDL standard library
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! Include the LpGBT-FPGA specific package
use work.lpgbtfpga_package.all;

--! Xilinx devices library:
library unisim;
use unisim.vcomponents.all;

entity lpgbtFpga_10g24 is
   GENERIC (
        FEC                             : integer range 0 to 2                   --! FEC selection can be: FEC5 or FEC12
   );
   PORT (
        -- Clocks
        downlinkClk_i                    : in  std_logic;                       --! 40MHz user clock
        uplinkClk_i                      : in  std_logic;                       --! 40MHz user clock

        downlinkRst_i                    : in  std_logic;                       --! Reset the downlink path
        uplinkRst_i                      : in  std_logic;                       --! Reset the uplink path

        -- Down link
        downlinkUserData_i               : in  std_logic_vector(31 downto 0);   --! Downlink data (user)
        downlinkEcData_i                 : in  std_logic_vector(1 downto 0);    --! Downlink EC field
        downlinkIcData_i                 : in  std_logic_vector(1 downto 0);    --! Downlink IC field

        downLinkBypassInterleaver_i      : in  std_logic;                       --! Bypass downlink interleaver (test purpose only)
        downLinkBypassFECEncoder_i       : in  std_logic;                       --! Bypass downlink FEC (test purpose only)
        downLinkBypassScrambler_i        : in  std_logic;                       --! Bypass downlink scrambler (test purpose only)
        downlinkReady_o                  : out std_logic;                       --! Downlink ready status

        -- Fixed-phase downlink CDC operation
        downlinkPhase_o                  : out  std_logic_vector(9 downto 0);   --! Phase to check fixed-phase
        downlinkPhaseCalib_i             : in   std_logic_vector(9 downto 0);   --! Phase measured in first reset
        downlinkPhaseForce_i             : in   std_logic                   ;   --! Force phase after first reset to ensure fixed-phase operation

        -- Up link
        uplinkUserData_o                 : out std_logic_vector(229 downto 0);  --! Uplink data (user)
        uplinkEcData_o                   : out std_logic_vector(1 downto 0);    --! Uplink EC field
        uplinkIcData_o                   : out std_logic_vector(1 downto 0);    --! Uplink IC field

        uplinkBypassInterleaver_i        : in  std_logic;                       --! Bypass uplink interleaver (test purpose only)
        uplinkBypassFECEncoder_i         : in  std_logic;                       --! Bypass uplink FEC (test purpose only)
        uplinkBypassScrambler_i          : in  std_logic;                       --! Bypass uplink scrambler (test purpose only)

        uplinkFECCorrectedClear_i        : in  std_logic;                       --! Uplink FEC corrected error clear (debugging)
        uplinkFECCorrectedLatched_o      : out std_logic;                       --! Uplink FEC corrected error latched (debugging)

        uplinkReady_o                    : out std_logic;                       --! Uplink ready status

        -- Debug
        uplinkMgtWordDbg                 : out std_logic_vector(31 downto 0);   -- AQ debug signals (1)
        mgt_rx_rdy                       : out std_logic;                       -- AQ debug signals (1)
        dbg_bitslip_counter              : out std_logic_vector(9 downto 0);    -- AQ debug signals (2)
        dbg_sta_headerLocked             : out std_logic;                       -- AQ debug signals (2)
        dbg_sta_gbRdy                    : out std_logic;                       -- AQ debug signals (2)
        dbg_datapath_rst_s               : out std_logic;                       -- AQ debug signals (2)
        dbg_rst_pattsearch               : out std_logic;                       -- AQ debug signals (2)
        dbg_rst_gearbox                  : out std_logic;                       -- CG debug signals (2)
        dbg_sta_headerFlag               : out std_logic;                       -- CG debug signals (2)
        dbg_uplinkReady                  : out std_logic;                       -- CG debug signals (2)

        -- Fixed-phase uplink CDC operation
        uplinkPhase_o                    : out  std_logic_vector(2 downto 0);   --! Phase to check fixed-phase
        uplinkPhaseCalib_i               : in   std_logic_vector(2 downto 0);   --! Phase measured in first reset
        uplinkPhaseForce_i               : in   std_logic;                      --! Force the phase to be the calibrated one

        -- MGT
        clk_mgtrefclk_i                  : in  std_logic;                       --! Transceiver serial clock
        clk_mgtfreedrpclk_i              : in  std_logic;                       --! 125MHz Free-running clock

        clk_mgtTxClk_o                   : out std_logic;
        clk_mgtRxClk_o                   : out std_logic;

        mgt_rxn_i                        : in  std_logic;
        mgt_rxp_i                        : in  std_logic;
        mgt_txn_o                        : out std_logic;
        mgt_txp_o                        : out std_logic;

        mgt_txpolarity_i                 : in  std_logic;
        mgt_rxpolarity_i                 : in  std_logic;

        mgt_txcaliben_i                  : in  std_logic;
        mgt_txcalib_i                    : in  std_logic_vector(6 downto 0);
        mgt_txaligned_o                  : out std_logic;
        mgt_txphase_o                    : out std_logic_vector(6 downto 0)
   );
end lpgbtFpga_10g24;

--=================================================================================================--
--####################################   Architecture   ###########################################--
--=================================================================================================--

architecture behavioral of lpgbtFpga_10g24 is

    COMPONENT xlx_ku_mgt_10g24
       port (
            --=============--
            -- Clocks      --
            --=============--
            MGT_REFCLK_i                 : in  std_logic;
            MGT_FREEDRPCLK_i             : in  std_logic;

            MGT_RXUSRCLK_o               : out std_logic;
            MGT_TXUSRCLK_o               : out std_logic;

            --=============--
            -- Resets      --
            --=============--
            MGT_TXRESET_i                : in  std_logic;
            MGT_RXRESET_i                : in  std_logic;

            --=============--
            -- Control     --
            --=============--
            MGT_TXPolarity_i             : in  std_logic;
            MGT_RXPolarity_i             : in  std_logic;

            MGT_RXSlide_i                : in  std_logic;

            MGT_ENTXCALIBIN_i            : in  std_logic;
            MGT_TXCALIB_i                : in  std_logic_vector(6 downto 0);

            --=============--
            -- Status      --
            --=============--
            MGT_TXREADY_o                : out std_logic;
            MGT_RXREADY_o                : out std_logic;

            MGT_TX_ALIGNED_o             : out std_logic;
            MGT_TX_PIPHASE_o             : out std_logic_vector(6 downto 0);
            --==============--
            -- Data         --
            --==============--
            MGT_USRWORD_i                : in  std_logic_vector(31 downto 0);
            MGT_USRWORD_o                : out std_logic_vector(31 downto 0);

            --===============--
            -- Serial intf.  --
            --===============--
            RXn_i                        : in  std_logic;
            RXp_i                        : in  std_logic;

            TXn_o                        : out std_logic;
            TXp_o                        : out std_logic
       );
    END COMPONENT;

    COMPONENT cdc_tx is
      generic (
        g_CLOCK_A_RATIO : integer := 1    ; --! Ratio between strobe period and clock A period
        g_CLOCK_B_RATIO : integer := 8    ; --! Ratio between strobe period and clock B period (>=4)
        g_ACC_PHASE     : integer := 125*8; --! Phase accumulator number - only relevant for fixed phase operation
        g_PHASE_SIZE    : integer := 10     --! ceil(log2(g_ACC_PHASE))
      );
      port (
        -- Interface A (latch - from where data comes)
        reset_a_i        : in   std_logic;                                 --! reset (only de-assert when all clocks and strobe A are stable)
        clk_a_i          : in   std_logic;                                 --! clock A
        data_a_i         : in   std_logic_vector;                          --! data A
        strobe_a_i       : in   std_logic;                                 --! strobe A

        -- Interface B (capture - to where data goes)
        clk_b_i          : in   std_logic;                                 --! clock B
        data_b_o         : out  std_logic_vector;                          --! data B (connected to vector of same size as data_a_i)
        strobe_b_o       : out  std_logic;                                 --! strobe B
        ready_b_o        : out  std_logic;                                 --! ready B (CDC is operating)

        -- Only relevant for fixed-phase operation
        clk_freerun_i    : in   std_logic;                                 --! Free-running clock (125MHz)
        phase_o          : out  std_logic_vector(g_PHASE_SIZE-1 downto 0); --! Phase to check fixed-phase
        phase_calib_i    : in   std_logic_vector(g_PHASE_SIZE-1 downto 0); --! Phase measured in first reset
        phase_force_i    : in   std_logic                                  --! Force the phase to be the calibrated one

      );
    end component cdc_tx;

    COMPONENT lpgbtfpga_downlink
       GENERIC(
             -- Expert parameters
             c_multicyleDelay              : integer range 0 to 7 := 3;                          --! Multicycle delay
             c_clockRatio                  : integer := 8;                                       --! Clock ratio is clock_out / 40 (shall be an integer - E.g.: 320/40 = 8)
             c_outputWidth                 : integer                                             --! Transceiver's word size
        );
        port (
             -- Clocks
             clk_i                         : in  std_logic;                                      --! Downlink datapath clock (either 320 or 40MHz)
             clkEn_i                       : in  std_logic;                                      --! Clock enable (1 over 8 when encoding runs @ 320Mhz, '1' @ 40MHz)
             rst_n_i                       : in  std_logic;                                      --! Downlink reset signal (Tx ready from the transceiver)

             -- Down link
             userData_i                    : in  std_logic_vector(31 downto 0);                  --! Downlink data (user)
             ECData_i                      : in  std_logic_vector(1 downto 0);                   --! Downlink EC field
             ICData_i                      : in  std_logic_vector(1 downto 0);                   --! Downlink IC field

             -- Output
             mgt_word_o                    : out std_logic_vector((c_outputWidth-1) downto 0);   --! Downlink encoded frame (IC + EC + User Data + FEC)

             -- Configuration
             interleaverBypass_i           : in  std_logic;                                      --! Bypass downlink interleaver (test purpose only)
             encoderBypass_i               : in  std_logic;                                      --! Bypass downlink FEC (test purpose only)
             scramblerBypass_i             : in  std_logic;                                      --! Bypass downlink scrambler (test purpose only)

             -- Status
             rdy_o                         : out std_logic                                       --! Downlink ready status
        );
    END COMPONENT;

    COMPONENT lpgbtfpga_uplink
       GENERIC(
             -- General configuration
             DATARATE                        : integer range 0 to 2 := DATARATE_5G12;              --! Datarate selection can be: DATARATE_10G24 or DATARATE_5G12
             FEC                             : integer range 0 to 2 := FEC5;                       --! FEC selection can be: FEC5 or FEC12

             -- Expert parameters
             c_multicyleDelay                : integer range 0 to 7 := 3;                          --! Multicycle delay
             c_clockRatio                    : integer;                                            --! Clock ratio is mgt_userclk / 40 (shall be an integer)
             c_mgtWordWidth                  : integer;                                            --! Bus size of the input word
             c_allowedFalseHeader            : integer;                                            --! Number of false header allowed to avoid unlock on frame error
             c_allowedFalseHeaderOverN       : integer;                                            --! Number of header checked to know wether the lock is lost or not
             c_requiredTrueHeader            : integer;                                            --! Number of true header required to go in locked state
             c_bitslip_mindly                : integer := 1;                                       --! Number of clock cycle required when asserting the bitslip signal
             c_bitslip_waitdly               : integer := 40                                       --! Number of clock cycle required before being back in a stable state
        );
        PORT (
             -- Clock and reset
             uplinkClk_i                     : in  std_logic;                                      --! Input clock (Rx user clock from transceiver)
             uplinkClkOutEn_o                : out std_logic;                                      --! Clock enable to be used in the user's logic
             uplinkRst_n_i                   : in  std_logic;                                      --! Uplink reset signal (Rx ready from the transceiver)

             -- Input
             mgt_word_i                      : in  std_logic_vector((c_mgtWordWidth-1) downto 0);  --! Input frame coming from the MGT

             -- Data
             userData_o                      : out std_logic_vector(229 downto 0);                 --! User output (decoded data). The payload size varies depending on the
                                                                                                         --! datarate/FEC configuration:
                                                                                                         --!     * *FEC5 / 5.12 Gbps*: 112bit
                                                                                                         --!     * *FEC12 / 5.12 Gbps*: 98bit
                                                                                                         --!     * *FEC5 / 10.24 Gbps*: 230bit
                                                                                                         --!     * *FEC12 / 10.24 Gbps*: 202bit
             EcData_o                        : out std_logic_vector(1 downto 0);                   --! EC field value received from the LpGBT
             IcData_o                        : out std_logic_vector(1 downto 0);                   --! IC field value received from the LpGBT

             -- Control
             bypassInterleaver_i             : in  std_logic;                                      --! Bypass uplink interleaver (test purpose only)
             bypassFECEncoder_i              : in  std_logic;                                      --! Bypass uplink FEC (test purpose only)
             bypassScrambler_i               : in  std_logic;                                      --! Bypass uplink scrambler (test purpose only)

             -- Transceiver control
             mgt_bitslipCtrl_o               : out std_logic;                                      --! Control the Bitslib/RxSlide port of the Mgt

             -- Status
             dataCorrected_o                 : out std_logic_vector(229 downto 0);                 --! Flag allowing to know which bit(s) were toggled by the FEC
             IcCorrected_o                   : out std_logic_vector(1 downto 0);                   --! Flag allowing to know which bit(s) of the IC field were toggled by the FEC
             EcCorrected_o                   : out std_logic_vector(1 downto 0);                   --! Flag allowing to know which bit(s) of the EC field  were toggled by the FEC
             rdy_o                           : out std_logic;                                      --! Ready signal from the uplink decoder
             frameAlignerEven_o              : out std_logic;                                       --! Number of bit slip is even (required only for advanced applications)

             -- Debug
             dbg_bitslip_counter             : out std_logic_vector(9 downto 0);                   -- AQ debug signals (2)
             dbg_sta_headerLocked            : out std_logic;                                      -- AQ debug signals (2)
             dbg_sta_gbRdy                   : out std_logic;                                      -- AQ debug signals (2)
             dbg_datapath_rst_s              : out std_logic;                                      -- AQ debug signals (2)
             dbg_rst_pattsearch              : out std_logic;                                      -- AQ debug signals (2)
             dbg_rst_gearbox                 : out std_logic;                                      -- CG debug signals (2)
             dbg_sta_headerFlag              : out std_logic                                       -- CG debug signals (2)
        );
    END COMPONENT;

    COMPONENT cdc_rx is
      generic (
        g_CLOCK_A_RATIO : integer := 8; --! Frequency ratio between slow and fast frequencies (>4)
        g_PHASE_SIZE    : integer := 3  --! log2(g_CLOCK_A_RATIO)
      );
      port (
        -- Interface A (latch - from where data comes)
        reset_a_i        : in   std_logic;                                 --! reset (only de-assert when all clocks and strobes are stable)
        clk_a_i          : in   std_logic;                                 --! clock A
        data_a_i         : in   std_logic_vector;                          --! data A
        strobe_a_i       : in   std_logic;                                 --! strobe A

        -- Interface B (capture_a - to where data goes)
        clk_b_i          : in   std_logic;                                 --! clock B
        data_b_o         : out  std_logic_vector;                          --! data B (connected to vector of same size as data_a_i)
        strobe_b_i       : in   std_logic;                                 --! strobe B
        ready_b_o        : out  std_logic;                                 --! Inteface is ready

        -- Only relevant for fixed-phase operation
        phase_o          : out  std_logic_vector(g_PHASE_SIZE-1 downto 0); --! Phase to check fixed-phase
        phase_calib_i    : in   std_logic_vector(g_PHASE_SIZE-1 downto 0); --! Phase measured in first reset
        phase_force_i    : in   std_logic                                  --! Force the phase to be the calibrated one
      );
    end component cdc_rx;

    COMPONENT xlx_ku_mgt_ip_reset_synchronizer is
       port (
          CLK_IN           : in  std_logic;
          RST_IN           : in  std_logic;
          RST_OUT          : out std_logic
       );
    end component xlx_ku_mgt_ip_reset_synchronizer;

    -- User CDC Tx
    signal downlinkData40     : std_logic_vector(35 downto 0)              ;
    signal downlinkData320    : std_logic_vector(35 downto 0)              ;
    signal downlinkStrobe320  : std_logic                                  ;
    signal mgt_txrdy_sync40   : std_logic                                  ;
    signal cdc_tx_reset       : std_logic                                  ;
    signal cdc_tx_ready       : std_logic                                  ;

    -- User CDC Rx
    signal uplinkData320           : std_logic_vector(233 downto 0)        ;
    signal uplinkStrobe320         : std_logic                             ;
    signal uplinkData40            : std_logic_vector(233 downto 0)        ;
    signal cdc_rx_reset            : std_logic                             ;
    signal cdc_rx_ready            : std_logic                             ;

    -- MGT
    signal uplinkReady_s           : std_logic                             ;
    signal downlink_mgtword_s               : std_logic_vector(31 downto 0);
    signal uplink_mgtword_s                 : std_logic_vector(31 downto 0);
    signal mgt_rxslide_s                    : std_logic                    ;
    signal mgt_txrdy_s                      : std_logic                    ;
    signal mgt_rxrdy_s                      : std_logic                    ;
    signal clk_mgtTxClk_s                   : std_logic                    ;
    signal clk_mgtRxClk_s                   : std_logic                    ;

    -- FEC latch flag
    signal uplinkdataCorrected              : std_logic_vector(229 downto 0);
    signal uplinkIcCorrected                : std_logic_vector(1 downto 0);
    signal uplinkEcCorrected                : std_logic_vector(1 downto 0);

begin                 --========####   Architecture Body   ####========--

    --========####   Downlink datapath   ####========--

    -- Reset scheme for downlink:
    -- downlinkRst_i     => Resets MGT Tx
    -- MGT Tx ready      => Resets User CDC Tx (responsible for generating the stable strobe aligned to 40MHz clock)
    -- User	CDC Tx ready => Resets downlink datapath
    txrdy_sync : xlx_ku_mgt_ip_reset_synchronizer
       port map(
          CLK_IN  => downlinkClk_i,
          RST_IN  => mgt_txrdy_s,
          RST_OUT => mgt_txrdy_sync40
       );
    cdc_tx_reset <= not mgt_txrdy_sync40;

    downlinkData40 <= downlinkIcData_i&downlinkEcData_i&downlinkUserData_i;
    cdc_tx_inst : cdc_tx
      generic map(
        g_CLOCK_A_RATIO => 1,
        g_CLOCK_B_RATIO => 8,
        g_ACC_PHASE     => 125*2,
        g_PHASE_SIZE    => 10
      )
      port map(
        -- Interface A (latch - from where data comes)
        reset_a_i        => cdc_tx_reset     ,
        clk_a_i          => downlinkClk_i    ,
        data_a_i         => downlinkData40   ,
        strobe_a_i       => '1'              ,

        -- Interface B (capture - to where data goes)
        clk_b_i          => clk_mgtTxClk_s   ,
        data_b_o         => downlinkData320  ,
        strobe_b_o       => downlinkStrobe320,
        ready_b_o        => cdc_tx_ready     ,

        -- Only relevant for fixed-phase operation
        clk_freerun_i    => clk_mgtfreedrpclk_i ,
        phase_o          => downlinkPhase_o,
        phase_calib_i    => downlinkPhaseCalib_i,
        phase_force_i    => downlinkPhaseForce_i
      );

    downlink_inst: lpgbtfpga_downlink
       GENERIC MAP(
            -- Expert parameters
            c_multicyleDelay      => 3,
            c_clockRatio          => 8,
            c_outputWidth         => 32
       )
       PORT MAP(
            -- Clocks
            clk_i                 => clk_mgtTxClk_s,
            clkEn_i               => downlinkStrobe320,
            rst_n_i               => cdc_tx_ready     ,

            -- Down link
            userData_i            => downlinkData320(31 downto 0) ,
            ECData_i              => downlinkData320(33 downto 32),
            ICData_i              => downlinkData320(35 downto 34),

            -- Output
            mgt_word_o            => downlink_mgtword_s           ,

            -- Configuration
            interleaverBypass_i   => downLinkBypassInterleaver_i  ,
            encoderBypass_i       => downLinkBypassFECEncoder_i   ,
            scramblerBypass_i     => downLinkBypassScrambler_i    ,

            -- Status
            rdy_o                 => downlinkReady_o
       );

    --========####   Uplink datapath   ####========--
    -- Reset scheme for uplink:
    -- uplinkRst_i           => Resets MGT Rx
    -- MGT Rx ready          => Resets uplink datapath
    -- Uplink datapath ready => Resets User CDC Rx
    cdc_rx_reset <= not uplinkReady_s;
    uplink_inst: lpgbtfpga_uplink
       GENERIC MAP(
            -- General configuration
            DATARATE                        => DATARATE_10G24,
            FEC                             => FEC,

            -- Expert parameters
            c_multicyleDelay                => 3,
            c_clockRatio                    => 8,
            c_mgtWordWidth                  => 32,
            c_allowedFalseHeader            => 5,
            c_allowedFalseHeaderOverN       => 64,
            c_requiredTrueHeader            => 30,
            c_bitslip_mindly                => 2,
            c_bitslip_waitdly               => 40
       )
       PORT MAP(
            -- Clock and reset
            uplinkClk_i                     => clk_mgtRxClk_s,
            uplinkClkOutEn_o                => uplinkStrobe320,
            uplinkRst_n_i                   => mgt_rxrdy_s,

            -- Input
            mgt_word_i                      => uplink_mgtword_s,

            -- Data
            userData_o                      => uplinkData320(229 downto 0),
            EcData_o                        => uplinkData320(231 downto 230),
            IcData_o                        => uplinkData320(233 downto 232),

            -- Control
            bypassInterleaver_i             => uplinkBypassInterleaver_i,
            bypassFECEncoder_i              => uplinkBypassFECEncoder_i,
            bypassScrambler_i               => uplinkBypassScrambler_i,

            -- Transceiver control
            mgt_bitslipCtrl_o               => mgt_rxslide_s,

            -- Status
            dataCorrected_o                 => uplinkdataCorrected,
            IcCorrected_o                   => uplinkIcCorrected  ,
            EcCorrected_o                   => uplinkEcCorrected  ,
            rdy_o                           => uplinkReady_s,
            frameAlignerEven_o              => open,

            -- Debug
            dbg_bitslip_counter    => dbg_bitslip_counter,
            dbg_sta_headerLocked   => dbg_sta_headerLocked,
            dbg_sta_gbRdy          => dbg_sta_gbRdy,
            dbg_datapath_rst_s     => dbg_datapath_rst_s,
            dbg_rst_pattsearch     => dbg_rst_pattsearch,
            dbg_rst_gearbox        => dbg_rst_gearbox,
            dbg_sta_headerFlag     => dbg_sta_headerFlag
       );

   --! FEC Corrected Flag for debugging
   upLinkFECCorrected: process(clk_mgtRxClk_s)
     begin
       if rising_edge(clk_mgtRxClk_s) then
--         if uplinkFECCorrectedClear_i = '1' then
--             uplinkFECCorrectedLatched_o <= '0';
--         else
             if( (unsigned(uplinkDataCorrected) /= 0) or
                 (unsigned(uplinkIcCorrected)   /= 0) or
                 (unsigned(uplinkEcCorrected)   /= 0) ) then
                 uplinkFECCorrectedLatched_o <= '1';
             else
                 uplinkFECCorrectedLatched_o <= '0';
             end if;
         --end if;
       end if;
   end process;

    cdc_rx_inst : cdc_rx
      generic map(
        g_CLOCK_A_RATIO => 8, --! Frequency ratio between slow and fast frequencies (>4)
        g_PHASE_SIZE    => 3  --! log2(g_CLOCK_A_RATIO)
      )
      port map(
        -- Interface A (latch - from where data comes)
        reset_a_i        =>	cdc_rx_reset   ,
        clk_a_i          => clk_mgtRxClk_s ,
        data_a_i         => uplinkData320  ,
        strobe_a_i       => uplinkStrobe320,

        -- Interface B (capture_a - to where data goes)
        clk_b_i          => uplinkClk_i    ,
        data_b_o         => uplinkData40   ,
        strobe_b_i       => '1'            ,
        ready_b_o        => cdc_rx_ready   ,

        -- Only relevant for fixed-phase operation
        phase_o          => uplinkPhase_o     ,
        phase_calib_i    => uplinkPhaseCalib_i,
        phase_force_i    => uplinkPhaseForce_i
      );

    uplinkUserData_o <= uplinkData40(229 downto 0);   --! Uplink data (user)
    uplinkEcData_o   <= uplinkData40(231 downto 230); --! Uplink EC field
    uplinkIcData_o   <= uplinkData40(233 downto 232); --! Uplink IC field
    uplinkReady_o    <= cdc_rx_ready;

    uplinkMgtWordDbg <= uplink_mgtword_s;             -- AQ debug signals (1)
    mgt_rx_rdy       <= mgt_rxrdy_s;                  -- AQ debug signals (1)
    dbg_uplinkReady  <= uplinkReady_s;                -- CG debug signals (2)


    --========####   FPGA Transceiver   ####========--
    mgt_inst: xlx_ku_mgt_10g24
       port map(
            --=============--
            -- Clocks      --
            --=============--
            MGT_REFCLK_i                 => clk_mgtrefclk_i,
            MGT_FREEDRPCLK_i             => clk_mgtfreedrpclk_i,

            MGT_RXUSRCLK_o               => clk_mgtRxClk_s,
            MGT_TXUSRCLK_o               => clk_mgtTxClk_s,

            --=============--
            -- Resets      --
            --=============--
            MGT_TXRESET_i                => downlinkRst_i,
            MGT_RXRESET_i                => uplinkRst_i,

            --=============--
            -- Control     --
            --=============--
            MGT_TXPolarity_i             => mgt_txpolarity_i,
            MGT_RXPolarity_i             => mgt_rxpolarity_i,

            MGT_RXSlide_i                => mgt_rxslide_s,

            MGT_ENTXCALIBIN_i            => mgt_txcaliben_i,
            MGT_TXCALIB_i                => mgt_txcalib_i  ,

            --=============--
            -- Status      --
            --=============--
            MGT_TXREADY_o                => mgt_txrdy_s,
            MGT_RXREADY_o                => mgt_rxrdy_s,

            MGT_TX_ALIGNED_o             => mgt_txaligned_o,
            MGT_TX_PIPHASE_o             => mgt_txphase_o,
            --==============--
            -- Data         --
            --==============--
            MGT_USRWORD_i                => downlink_mgtword_s,
            MGT_USRWORD_o                => uplink_mgtword_s,

            --===============--
            -- Serial intf.  --
            --===============--
            RXn_i                        => mgt_rxn_i,
            RXp_i                        => mgt_rxp_i,

            TXn_o                        => mgt_txn_o,
            TXp_o                        => mgt_txp_o
       );


    clk_mgtTxClk_o <= clk_mgtTxClk_s;
    clk_mgtRxClk_o <= clk_mgtRxClk_s;

end behavioral;
--=================================================================================================--
--#################################################################################################--
--=================================================================================================--
