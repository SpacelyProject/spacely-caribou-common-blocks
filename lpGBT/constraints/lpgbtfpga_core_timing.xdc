##====================##
## TIMING CONSTRAINTS ##
##====================##

# Multicycle constraints: ease the timing constraints

# Uplink constraints: Values depend on the c_multicyleDelay. Shall be the same one for setup time and -1 for the hold time
set_multicycle_path 3 -from [get_pins {lpgbtFpga_top_inst/uplink_inst/frame_pipelined_s_reg[*]/C}] -setup
set_multicycle_path 2 -from [get_pins {lpgbtFpga_top_inst/uplink_inst/frame_pipelined_s_reg[*]/C}] -hold
set_multicycle_path 3 -from [get_pins -hierarchical -filter {NAME =~ lpgbtFpga_top_inst/uplink_inst/*descrambledData_reg[*]/C}] -setup
set_multicycle_path 2 -from [get_pins -hierarchical -filter {NAME =~ lpgbtFpga_top_inst/uplink_inst/*descrambledData_reg[*]/C}] -hold

# Downlink constraints: Values depend on the c_multicyleDelay. Shall be the same one for setup time and -1 for the hold time
set_multicycle_path -setup -to [get_pins -hierarchical -filter {NAME =~ lpgbtFpga_top_inst/downlink_inst/lpgbtfpga_scrambler_inst/scrambledData*/D}] 3
set_multicycle_path -hold -to [get_pins -hierarchical -filter {NAME =~ lpgbtFpga_top_inst/downlink_inst/lpgbtfpga_scrambler_inst/scrambledData*/D}] 2