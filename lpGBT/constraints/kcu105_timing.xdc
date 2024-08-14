##===================================================================================================##
##=========================================  CLOCKS  ================================================##
##===================================================================================================##

##========================##
## FABRIC CLOCK 74.25 MHz ##
##========================##
create_clock -period 13.468 -name USER_CLOCK [get_ports USER_CLOCK_P]

##===================##
## MGT CLOCK 320 MHz ##
##===================##
create_clock -period 3.125 -name SMA_MGT_REFCLK [get_ports SMA_MGT_REFCLK_P]

##===========##
## User CDC  ##
##===========##
set_max_delay -from  [get_pins -hierarchical -filter {NAME =~ *cdc_rx_inst/data_a_reg_reg*/C}]  -to [get_pins -hierarchical -filter {NAME =~ *cdc_rx_inst/data_b_reg_reg*/D}]  -datapath_only 6.25
set_max_delay -datapath_only -from [get_pins -hierarchical -filter {NAME =~ *cdc_tx_inst/reset_a_strobe_sync_reg/C}] -to [get_pins -hierarchical -filter {NAME =~ *cdc_tx_inst/reset_b_meta_reg/D}] 6.250
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *cdc_tx_inst/advance_toggle_meta_reg/D}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *cdc_tx_inst/retard_toggle_meta_reg/D}]

set _xlnx_shared_i0 [get_pins -hierarchical -filter {NAME =~ *cdc_rx_inst/data_a_reg_reg*/C}]
set _xlnx_shared_i1 [get_pins -hierarchical -filter {NAME =~ *cdc_rx_inst/data_b_reg_reg*/D}]
set_max_delay -datapath_only -from $_xlnx_shared_i0 -to $_xlnx_shared_i1 6.250
set_max_delay -datapath_only -from [get_pins -hierarchical -filter {NAME =~ *cdc_rx_inst/strobe_b_toggle_reg/C}] -to [get_pins -hierarchical -filter {NAME =~ *cdc_rx_inst/strobe_b_toggle_meta_reg/D}] 6.250
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *cdc_rx_inst/phase_calib_a_reg*/D}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *cdc_rx_inst/phase_force_a_reg/D}]

##==================================##
## Timing exceptions for MGT design ##
##==================================##


# System clock is asynchronous to other clocks in design
set_clock_groups -asynchronous -group USER_CLOCK

# Reset synchronizer
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *lpgbtFpga_top_inst/mgt_inst/resetDoneSynch_rx/rst_in_*_reg/PRE}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *lpgbtFpga_top_inst/mgt_inst/txAlignedSynch_tx/rst_in_*_reg/PRE}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *lpgbtFpga_top_inst/mgt_inst/txPhaseAlignerResetSynch_sys/rst_in_*_reg/PRE}]


