-------------------------------------------------------
--! @file
--! @author Julian Mendez <julian.mendez@cern.ch> (CERN - EP-ESE-BE)
--! @version 2.0
--! @brief ZCU102 Example design top - Includes VIOs and pattern gen/check.
-------------------------------------------------------

-- IEEE VHDL standard library:
library ieee;
use ieee.std_logic_1164.all;

package bus_multiplexer_pkg is
    type conf2b_array is array(natural range <>) of std_logic_vector(1 downto 0);
end package;
    
--! Xilinx devices library:
library unisim;
use unisim.vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.bus_multiplexer_pkg.all;
use work.lpgbtfpga_package.all;

--=================================================================================================--
--#######################################   Entity   ##############################################--
--=================================================================================================--
entity lpgbtfpga_zcu102_10g24_top is
    port (  
      
      --===============--
      -- Clocks scheme --
      --===============--       
      -- MGT(GTX) reference clock:
      ----------------------------
      
      -- Comment: * The MGT reference clock MUST be provided by an external clock generator.
      --
      --          * The MGT reference clock frequency must be 320MHz.
      SMA_MGT_REFCLK_P                               : in  std_logic;
      SMA_MGT_REFCLK_N                               : in  std_logic; 
                  
      -- Fabric clock:
      ----------------     

      USER_CLOCK_P                                   : in  std_logic;
      USER_CLOCK_N                                   : in  std_logic;      
      
      --==========--
      -- MGT(GTX) --
      --==========--                   
      
      -- Serial lanes:
      ----------------
      
      --SFP0_TX_P                                      : out std_logic;
      --SFP0_TX_N                                      : out std_logic;
      SFP0_RX_P                                      : in  std_logic;
      SFP0_RX_N                                      : in  std_logic;


      -- DEBUG SIGNALS:
      uplinkEcData_o  : out std_logic_vector(1 downto 0);
      uplinkIcData_o  : out std_logic_vector(1 downto 0);
      uplinkPhase_o   : out std_logic_vector(2 downto 0);
      mgt_txaligned_o : out std_logic;
      mgt_txphase_o   : out std_logic_vector(6 downto 0);
      

      -- REGULAR DATA SIGNALS:
      
      clk40_o                                        : out std_logic; --clock for lpgbt frame data 
      uplinkrdy_o                                    : out std_logic; --block sync state
      uplinkUserData_o                               : out std_logic_vector(233 downto 0);
      uplinkRst_i                                    : in  std_logic; --resets the MGT and the rest of the logic
      uplinkFEC_o                                   : out std_logic; --pulses 1 on frames with bit erros
      mgt_rxpolarity_i                               : in  std_logic
      -- SFP control:
      ---------------
      
      --SFP0_TX_DISABLE                                : out std_logic    
    
      --====================--
      -- Signals forwarding --
      --====================--
      
      -- SMA output:
      --------------
      --USER_SMA_GPIO_P                                : out std_logic;    
      --USER_SMA_GPIO_N                                : out std_logic  
   ); 
end lpgbtfpga_zcu102_10g24_top;

--=================================================================================================--
--####################################   Architecture   ###########################################-- 
--=================================================================================================--

architecture behavioral of lpgbtfpga_zcu102_10g24_top is

    -- Components declaration
    component lpgbtFpga_10g24 is 
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
    end component lpgbtFpga_10g24;
        
--    COMPONENT vio_0
--      PORT (
--        clk : IN STD_LOGIC;
--        probe_in0 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_in1 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
--        probe_in3 : IN STD_LOGIC_VECTOR(27 DOWNTO 0);
--        probe_in4 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_in5 : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
--        probe_in6 : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_in7 : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
--        probe_in8 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		
--        probe_out0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out1 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out2 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out3 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out4 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out5 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out6 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out7 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out8 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out9 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out10 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
--        probe_out11 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out12 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out13 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out14 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out15 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out16 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out17 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out18 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out19 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out20 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out21 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out22 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out23 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out24 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out25 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out26 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out27 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out28 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out29 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out30 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out31 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out32 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out33 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out34 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out35 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out36 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out37 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out38 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out39 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out40 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out41 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out42 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out43 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out44 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
--        probe_out45 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out46 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out47 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out48 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
--        probe_out49 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
--        probe_out50 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
--        probe_out51 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
--      );
--    END COMPONENT;
          
--    COMPONENT lpgbtfpga_patterngen is
--      port(
--          clk320DnLink_i            : in  std_logic;
--          clkEnDnLink_i             : in  std_logic;
    
--          generator_rst_i           : in  std_logic;
    
--          config_group0_i           : in  std_logic_vector(1 downto 0);
--          config_group1_i           : in  std_logic_vector(1 downto 0);
--          config_group2_i           : in  std_logic_vector(1 downto 0);
--          config_group3_i           : in  std_logic_vector(1 downto 0);
    
--          fixed_pattern_i           : in  std_logic_vector(31 downto 0);
    
--          downlink_o                : out std_logic_vector(31 downto 0);
    
--          eport_gen_rdy_o           : out std_logic_vector(15 downto 0)
--      );
--    END COMPONENT;
        
--    COMPONENT lpgbtfpga_patternchecker
--        port (
--            reset_checker_i  : in  std_logic;
--            ser320_clk_i     : in  std_logic;
--            ser320_clkEn_i   : in  std_logic;
    
--            data_rate_i      : in  std_logic;
    
--            elink_config_i   : in  conf2b_array(27 downto 0);
    
--            error_detected_o : out std_logic_vector(27 downto 0);
    
--            userDataUpLink_i : in  std_logic_vector(229 downto 0)
--        );
--    END COMPONENT;
    
    -- Signals:
            
        -- Clocks:
        signal mgtRefClk_from_smaMgtRefClkbuf_s   : std_logic;

        signal mgt_freedrpclk_s                   : std_logic;
        
        signal lpgbtfpga_mgttxclk_s               : std_logic;
        signal lpgbtfpga_mgtrxclk_s               : std_logic;
        
        
        -- User CDC for lpGBT-FPGA		
        signal lpgbtfpga_clk40                    : std_logic;		
        signal uplinkPhase_s                      : std_logic_vector(2 downto 0);
        signal uplinkPhaseCalib_s                 : std_logic_vector(2 downto 0);
        signal uplinkPhaseForce_s                 : std_logic;                   
                                                                                 
        signal downlinkPhase_s                    : std_logic_vector(9 downto 0);
        signal downlinkPhaseCalib_s               : std_logic_vector(9 downto 0);
        signal downlinkPhaseForce_s               : std_logic                   ;
		
        -- LpGBT-FPGA                             
        signal lpgbtfpga_downlinkrst_s            : std_logic := '1';
        signal lpgbtfpga_downlinkrdy_s            : std_logic;
        signal lpgbtfpga_uplinkrst_s              : std_logic;
        signal lpgbtfpga_uplinkrdy_s              : std_logic;
        
        signal lpgbtfpga_downlinkUserData_s       : std_logic_vector(31 downto 0) := (others => '0');
        signal lpgbtfpga_downlinkEcData_s         : std_logic_vector(1 downto 0);
        signal lpgbtfpga_downlinkIcData_s         : std_logic_vector(1 downto 0);
        
        signal lpgbtfpga_uplinkUserData_s         : std_logic_vector(229 downto 0);
        signal lpgbtfpga_uplinkEcData_s           : std_logic_vector(1 downto 0);
        signal lpgbtfpga_uplinkIcData_s           : std_logic_vector(1 downto 0);
        signal lpgbtfpga_uplinkPhase_s            : std_logic_vector(2 downto 0);
        signal lpgbtfpga_uplinkclk_s              : std_logic;

        signal lpgbtfpga_mgt_txpolarity_s         : std_logic;
        signal lpgbtfpga_mgt_rxpolarity_s         : std_logic;
        signal lpgbtfpga_mgt_txaligned_s          : std_logic;
        signal lpgbtfpga_mgt_txpiphase_s          : std_logic_vector(6 downto 0);
        signal lpgbtfpga_mgt_txpicalib_s          : std_logic_vector(6 downto 0);
        signal lpgbtfpga_mgt_txcaliben_s          : std_logic;
                                
        signal downLinkBypassInterleaver_s        : std_logic := '0';
        signal downLinkBypassFECEncoder_s         : std_logic := '0';
        signal downLinkBypassScrambler_s          : std_logic := '0';
        
        signal upLinkScramblerBypass_s            : std_logic := '0';
        signal upLinkFecBypass_s                  : std_logic := '0';
        signal upLinkInterleaverBypass_s          : std_logic := '0';
        
        signal upLinkFECCorrectedClear_s          : std_logic := '0';
        signal upLinkFECCorrectedLatched_s        : std_logic       ;
		
        -- Config
        signal uplinkSelectDataRate_s             : std_logic := '0';

        signal generator_rst_s                    : std_logic;
        signal downconfig_g0_s                    : std_logic_vector(1 downto 0);
        signal downconfig_g1_s                    : std_logic_vector(1 downto 0);
        signal downconfig_g2_s                    : std_logic_vector(1 downto 0);
        signal downconfig_g3_s                    : std_logic_vector(1 downto 0);        
        signal downlink_gen_rdy_s                 : std_logic_vector(15 downto 0);
    
        signal upelink_config_s                   : conf2b_array(27 downto 0);
        signal uperror_detected_s                 : std_logic_vector(27 downto 0);
        signal reset_upchecker_s                  : std_logic;

begin                 --========####   Architecture Body   ####========-- 

    -- Reset controll   
     
    --SFP0_TX_DISABLE           <= '1'; --Enable SFP
--    SFP0_TX_CTRL : OBUF
--    generic map (
--       DRIVE => 12,
--       IOSTANDARD => "DEFAULT",
--       SLEW => "SLOW")
--    port map (
--       O => SFP0_TX_DISABLE,     
--       I => '1'      --Enable SFP TX
--    );
    
    -- Clocks
    
    -- MGT(GTX) reference clock:
    ----------------------------   
    -- Comment: * The MGT reference clock MUST be provided by an external clock generator.
    --          * The MGT reference clock frequency must be 320MHz for the latency-optimized GBT Bank. 
    smaMgtRefClkIbufdsGtxe2: ibufds_gte4
      generic map(
        REFCLK_EN_TX_PATH           => '0',
        REFCLK_HROW_CK_SEL          => (others => '0'),
        REFCLK_ICNTL_RX             => (others => '0')
      )
      port map (
        O                                           => mgtRefClk_from_smaMgtRefClkbuf_s,
        ODIV2                                       => open,
        CEB                                         => '0',
        I                                           => SMA_MGT_REFCLK_P,
        IB                                          => SMA_MGT_REFCLK_N
      );
      
        
    userClockIbufgds: ibufgds
      generic map (
         IBUF_LOW_PWR                                => FALSE,      
         IOSTANDARD                                  => "LVDS_25")
      port map (     
         O                                           => mgt_freedrpclk_s,   
         I                                           => USER_CLOCK_P,  
         IB                                          => USER_CLOCK_N 
      );
            
  -- In this example design, the 40MHz clock used for the user logic is derived from a division of the Tx user clock of the MGT
  -- It should be noted, that in realistic cases, this clock typically comes from an external PLL (sync. to the MGT Tx reference clock)
  lpgbtfpga_clk40_inst : bufgce_div
    generic map (
      BUFGCE_DIVIDE => 8
    )
    port map (
      i   => lpgbtfpga_mgtrxclk_s, --lpgbtfpga_mgttxclk_s,
      o   => lpgbtfpga_clk40,
      ce  => '1',
      clr => '0'
    );	
    
   clk40_o <= lpgbtfpga_clk40;

    -- LpGBT FPGA
    lpgbtFpga_top_inst: lpgbtFpga_10g24 
       generic map (
            FEC                             => FEC5
       )
       port map (
            -- Clocks
            downlinkClk_i                    => lpgbtfpga_clk40,
            uplinkClk_i                      => lpgbtfpga_clk40,

            downlinkRst_i                    => uplinkRst_i, -- lpgbtfpga_downlinkrst_s,
            uplinkRst_i                      => uplinkRst_i, --lpgbtfpga_uplinkrst_s,

            -- Down link
            downlinkUserData_i               => lpgbtfpga_downlinkUserData_s,
            downlinkEcData_i                 => lpgbtfpga_downlinkEcData_s,
            downlinkIcData_i                 => lpgbtfpga_downlinkIcData_s,

            downLinkBypassInterleaver_i      => '0', --downLinkBypassInterleaver_s,
            downLinkBypassFECEncoder_i       => '0', --downLinkBypassFECEncoder_s,
            downLinkBypassScrambler_i        => '0', --downLinkBypassScrambler_s,

            downlinkReady_o                  => open, --lpgbtfpga_downlinkrdy_s,

            -- Fixed-phase downlink CDC operation
            downlinkPhase_o                  => open, --downlinkPhase_s     ,
            downlinkPhaseCalib_i             => "0000000000", --downlinkPhaseCalib_s,
            downlinkPhaseForce_i             => '0', --downlinkPhaseForce_s,

            -- Up link
            uplinkUserData_o                 => lpgbtfpga_uplinkUserData_s,
            uplinkEcData_o                   => lpgbtfpga_uplinkEcData_s,
            uplinkIcData_o                   => lpgbtfpga_uplinkIcData_s,

            uplinkBypassInterleaver_i        => '0',--upLinkInterleaverBypass_s,
            uplinkBypassFECEncoder_i         => '0', --upLinkFecBypass_s,
            uplinkBypassScrambler_i          => '0', --upLinkScramblerBypass_s,
            
            uplinkFECCorrectedClear_i        => '0', --upLinkFECCorrectedClear_s,
			uplinkFECCorrectedLatched_o      => upLinkFECCorrectedLatched_s,
		
            uplinkReady_o                    => lpgbtfpga_uplinkrdy_s,

            -- Fixed-phase uplink CDC operation
            uplinkPhase_o                    => lpgbtfpga_uplinkPhase_s     ,
            uplinkPhaseCalib_i               => "000", --uplinkPhaseCalib_s,
            uplinkPhaseForce_i               => '0', --uplinkPhaseForce_s,

            -- MGT
            clk_mgtrefclk_i                  => mgtRefClk_from_smaMgtRefClkbuf_s,
            clk_mgtfreedrpclk_i              => mgt_freedrpclk_s, --Sasha: needs to be 80 MHz or slower. 125 MHz atm
            
            clk_mgtTxClk_o                   => lpgbtfpga_mgttxclk_s,
            clk_mgtRxClk_o                   => lpgbtfpga_mgtrxclk_s,
            
            mgt_rxn_i                        => SFP0_RX_N,
            mgt_rxp_i                        => SFP0_RX_P,
            mgt_txn_o                        => open, --SFP0_TX_N,
            mgt_txp_o                        => open, --SFP0_TX_P,
            
            mgt_txpolarity_i                 => '0', --lpgbtfpga_mgt_txpolarity_s,
            mgt_rxpolarity_i                 => mgt_rxpolarity_i, --lpgbtfpga_mgt_rxpolarity_s,
            -- HPTD IP
            mgt_txcaliben_i                  => '0', --lpgbtfpga_mgt_txcaliben_s,
            mgt_txcalib_i                    => "0000000", --lpgbtfpga_mgt_txpicalib_s,                    
            mgt_txaligned_o                  => open,  --lpgbtfpga_mgt_txaligned_s,
            mgt_txphase_o                    => open --lpgbtfpga_mgt_txpiphase_s
       );


    uplinkPhase_o <= lpgbtfpga_uplinkPhase_s;
    uplinkEcData_o <= lpgbtfpga_uplinkEcData_s;
    uplinkIcData_o <= lpgbtfpga_uplinkIcData_s;
    
    uplinkrdy_o <= lpgbtfpga_uplinkrdy_s;
    uplinkUserData_o <= lpgbtfpga_uplinkIcData_s & lpgbtfpga_uplinkEcData_s & lpgbtfpga_uplinkUserData_s;
    uplinkFEC_o <= upLinkFECCorrectedLatched_s;
       
    -- Data stimulis
    lpgbtfpga_downlinkEcData_s     <= (others => '1');
    lpgbtfpga_downlinkIcData_s     <= (others => '1');
	
--    -- Data pattern generator / checker (PRBS7)
--    lpgbtfpga_patterngen_inst: lpgbtfpga_patterngen
--        port map(
--            --clk40Mhz_Tx_i      : in  std_logic;
--            clk320DnLink_i            => lpgbtfpga_clk40,
--            clkEnDnLink_i             => '1',

--            generator_rst_i           => generator_rst_s,

--            -- Group configurations:
--            --    "11": 320Mbps
--            --    "10": 160Mbps
--            --    "01": 80Mbps
--            --    "00": Fixed pattern
--            config_group0_i           => downconfig_g0_s,
--            config_group1_i           => downconfig_g1_s,
--            config_group2_i           => downconfig_g2_s,
--            config_group3_i           => downconfig_g3_s,

--            downlink_o                => lpgbtfpga_downlinkUserData_s,

--            fixed_pattern_i           => x"12345678",

--            eport_gen_rdy_o           => downlink_gen_rdy_s
--        );

--    lpgbtfpga_patternchecker_inst: lpgbtfpga_patternchecker
--        port map(
--            reset_checker_i  => reset_upchecker_s,
--            ser320_clk_i     => lpgbtfpga_clk40,
--            ser320_clkEn_i   => '1',
    
--            data_rate_i      => uplinkSelectDataRate_s,
    
--            elink_config_i   => upelink_config_s,
    
--            error_detected_o => uperror_detected_s,
    
--            userDataUpLink_i => lpgbtfpga_uplinkUserData_s
--        );
        
--    vio_debug_inst : vio_0
--      PORT MAP (
--        clk => mgt_freedrpclk_s,
--        probe_in0(0)  => lpgbtfpga_downlinkrdy_s,
--        probe_in1(0)  => lpgbtfpga_uplinkrdy_s,
--        probe_in2     => downlink_gen_rdy_s,
--        probe_in3     => uperror_detected_s,
--        probe_in4(0)  => lpgbtfpga_mgt_txaligned_s,
--        probe_in5     => lpgbtfpga_mgt_txpiphase_s,
--        probe_in6(0)  => upLinkFECCorrectedLatched_s,  
--        probe_in7     => downlinkPhase_s,
--        probe_in8     => uplinkPhase_s,
		
--        probe_out0(0) => lpgbtfpga_downlinkrst_s,
--        probe_out1(0) => lpgbtfpga_uplinkrst_s,
--        probe_out2(0) => downLinkBypassInterleaver_s,
--        probe_out3(0) => downLinkBypassFECEncoder_s,
--        probe_out4(0) => downLinkBypassScrambler_s,
--        probe_out5    => open,
--        probe_out6    => open,
--        probe_out7(0) => upLinkInterleaverBypass_s,
--        probe_out8(0) => upLinkFecBypass_s,
--        probe_out9(0) => upLinkScramblerBypass_s,
--        probe_out10   => lpgbtfpga_mgt_txpicalib_s,
--        probe_out11(0)=> lpgbtfpga_mgt_txcaliben_s,
--        probe_out12(0)=> generator_rst_s,
--        probe_out13   => downconfig_g0_s,
--        probe_out14   => downconfig_g1_s,
--        probe_out15   => downconfig_g2_s,
--        probe_out16   => downconfig_g3_s,
--        probe_out17(0)=> reset_upchecker_s,
--        probe_out18   => upelink_config_s(0),
--        probe_out19   => upelink_config_s(1),
--        probe_out20   => upelink_config_s(2),
--        probe_out21   => upelink_config_s(3),
--        probe_out22   => upelink_config_s(4),
--        probe_out23   => upelink_config_s(5),
--        probe_out24   => upelink_config_s(6),
--        probe_out25   => upelink_config_s(7),
--        probe_out26   => upelink_config_s(8),
--        probe_out27   => upelink_config_s(9),
--        probe_out28   => upelink_config_s(10),
--        probe_out29   => upelink_config_s(11),
--        probe_out30   => upelink_config_s(12),
--        probe_out31   => upelink_config_s(13),
--        probe_out32   => upelink_config_s(14),
--        probe_out33   => upelink_config_s(15),
--        probe_out34   => upelink_config_s(16),
--        probe_out35   => upelink_config_s(17),
--        probe_out36   => upelink_config_s(18),
--        probe_out37   => upelink_config_s(20),
--        probe_out38   => upelink_config_s(21),
--        probe_out39   => upelink_config_s(22),
--        probe_out40   => upelink_config_s(23),
--        probe_out41   => upelink_config_s(24),
--        probe_out42   => upelink_config_s(25),
--        probe_out43   => upelink_config_s(26),
--        probe_out44   => upelink_config_s(27),
--        probe_out45(0)=> lpgbtfpga_mgt_txpolarity_s,
--        probe_out46(0)=> lpgbtfpga_mgt_rxpolarity_s,
--        probe_out47(0)=> upLinkFECCorrectedClear_s,
--        probe_out48   => downlinkPhaseCalib_s,
--        probe_out49   => uplinkPhaseCalib_s,
--        probe_out50(0)=> downlinkPhaseForce_s,
--        probe_out51(0)=> uplinkPhaseForce_s
--      );
      
      --USER_SMA_GPIO_P <= lpgbtfpga_clk40;
      --USER_SMA_GPIO_N <= lpgbtfpga_mgtrxclk_s;
    
end behavioral;
--=================================================================================================--
--#################################################################################################--
--=================================================================================================--
