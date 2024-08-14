Original Docs:
https://docs.google.com/document/d/1Slml3_8-nLjZJFmGh5CpV3lMx8QLE54YoOyklB6LCx4/edit?exids=71685778,71685773

The example repository
https://github.com/Fermilab-Microelectronics/lpgbt_sprocket/tree/main

## Clock requirements and FPGA pinout

The IP cores are synthesized for Vivado 2022.1. The MGT is GTH connected to SFP0.
The ref clock is 320.632 MHz (8*40.079 MHz). It is provided by the Si570 programmable oscillator U51.  The oscillator can be configured with the UART interface using the board software ("USER MGT SI570"). 

The free-running clock is 74.25 MHz. It is not programmable.

The top level pinout is in https://github.com/Fermilab-Microelectronics/lpgbt_sprocket/blob/main/constraints/kcu105_physical.xdc


## lpGBT interface

The lpGBT interface has the following signals. The uplink reset needs to be pulsed after all the clocks and signals are present.

uplinkReady_o  becomes 1 when the block alignment is complete.

The received data is passed in uplinkUserData_o, uplinkEcData_o, and uplinkIcData_o clocked with uplinkClk_i.  uplinkClk_i  is a 40.079 MHz clock derived from lpgbtfpga_mgttxclk_s or lpgbtfpga_mgrtxclk_s.

component lpgbtFpga_10g24 is
   	GENERIC (
        	FEC                         	: integer range 0 to 2 		 --! FEC selection can be: FEC5 or FEC12
   	);
   	PORT (
        	-- Clocks
        	downlinkClk_i                	: in  std_logic;                   	--! 40MHz user clock
        	uplinkClk_i                  	: in  std_logic;                   	--! 40MHz user clock
    
        	downlinkRst_i               	: in  std_logic;                   	--! Reset the downlink path
        	uplinkRst_i                  	: in  std_logic;                   	--! Reset the uplink path
       	 
        	-- Down link
        	downlinkUserData_i       	: in  std_logic_vector(31 downto 0);   --! Downlink data (user)
        	downlinkEcData_i          	: in  std_logic_vector(1 downto 0);	--! Downlink EC field
        	downlinkIcData_i            : in  std_logic_vector(1 downto 0);	--! Downlink IC field
               	 
        	downLinkBypassInterleaver_i  	: in  std_logic;                   	--! Bypass downlink interleaver (test purpose only)
        	downLinkBypassFECEncoder_i  	: in  std_logic;                   	--! Bypass downlink FEC (test purpose only)
        	downLinkBypassScrambler_i    	: in  std_logic;                   	--! Bypass downlink scrambler (test purpose only)
        	downlinkReady_o              	: out std_logic;                   	--! Downlink ready status
    
        	-- Fixed-phase downlink CDC operation
        	downlinkPhase_o              	: out  std_logic_vector(9 downto 0);   --! Phase to check fixed-phase
        	downlinkPhaseCalib_i         	: in   std_logic_vector(9 downto 0);   --! Phase measured in first reset
        	downlinkPhaseForce_i         	: in   std_logic               	;   --! Force phase after first reset to ensure fixed-phase operation
    
        	-- Up link
        	uplinkUserData_o             	: out std_logic_vector(229 downto 0);  --! Uplink data (user)
        	uplinkEcData_o               	: out std_logic_vector(1 downto 0);	--! Uplink EC field
        	uplinkIcData_o               	: out std_logic_vector(1 downto 0);	--! Uplink IC field
               	 
        	uplinkBypassInterleaver_i    	: in  std_logic;                   	--! Bypass uplink interleaver (test purpose only)
        	uplinkBypassFECEncoder_i     	: in  std_logic;                   	--! Bypass uplink FEC (test purpose only)
        	uplinkBypassScrambler_i      	: in  std_logic;                   	--! Bypass uplink scrambler (test purpose only)
    
        	uplinkFECCorrectedClear_i    	: in  std_logic;                   	--! Uplink FEC corrected error clear (debugging)
        	uplinkFECCorrectedLatched_o  	: out std_logic;                   	--! Uplink FEC corrected error latched (debugging)
    
        	uplinkReady_o                	: out std_logic;                   	--! Uplink ready status
       	 
        	-- Fixed-phase uplink CDC operation
        	uplinkPhase_o                	: out  std_logic_vector(2 downto 0);   --! Phase to check fixed-phase
        	uplinkPhaseCalib_i           	: in   std_logic_vector(2 downto 0);   --! Phase measured in first reset
        	uplinkPhaseForce_i           	: in   std_logic;                  	--! Force the phase to be the calibrated one
    
        	-- MGT
        	clk_mgtrefclk_i              	: in  std_logic;                   	--! Transceiver serial clock
        	clk_mgtfreedrpclk_i          	: in  std_logic;               	--! 74.25MHz Free-running clock
       	 
        	clk_mgtTxClk_o             : out std_logic;
        	clk_mgtRxClk_o             : out std_logic;
                   	 
        	mgt_rxn_i                    	: in  std_logic;
        	mgt_rxp_i                    	: in  std_logic;
        	mgt_txn_o                    	: out std_logic;
        	mgt_txp_o                    	: out std_logic;
              	 
        	mgt_txpolarity_i            	: in  std_logic;       
        	mgt_rxpolarity_i            	: in  std_logic;       
   	    
        	mgt_txcaliben_i              	: in  std_logic;
        	mgt_txcalib_i                	: in  std_logic_vector(6 downto 0);                 	 
        	mgt_txaligned_o              	: out std_logic;
        	mgt_txphase_o                	: out std_logic_vector(6 downto 0) 	 
   	);
	end component lpgbtFpga_10g24;


## Files needed for further integration with Caribou firmware.

cdc_user/ -> All files
constraints/ -> All files
hdl/ -> lpgbtfpga_5g12.vhd, lpgbtfpga_kcu105_10g24_top.vhd (external signals and the 40 Mhz clock buffer)
lpgbt-fpga/ -> All files
mgt/ -> All files
