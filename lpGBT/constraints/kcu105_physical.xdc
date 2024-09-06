##===================================================================================================##
##========================================  I/O PINS  ===============================================##
##===================================================================================================##

##==============##
## FABRIC CLOCK ##
##==============##
# 74.25 MHz clock from Si5341B (U69)
set_property IOSTANDARD LVDS_25 [get_ports USER_CLOCK_P]
set_property IOSTANDARD LVDS_25 [get_ports USER_CLOCK_N]
set_property PACKAGE_PIN AK15 [get_ports USER_CLOCK_P]
set_property PACKAGE_PIN AK14 [get_ports USER_CLOCK_N]

##==========##
## MGT(GTH) ##
##==========##

## MGT CLOCK:
##--------------

## Comment: * The MGT reference clock MUST be provided by an external clock generator.
##
##          * The MGT reference clock frequency must be 320MHz.

#CLock from Si570
# From U51 "Si570 MGT" in the Board User Interface
set_property PACKAGE_PIN C7 [get_ports SMA_MGT_REFCLK_N]
set_property PACKAGE_PIN C8 [get_ports SMA_MGT_REFCLK_P]

## SERIAL LANES:
##--------------

# Use of SFP
## Note 8/13/2024 -- SFP_TX is unused
#set_property PACKAGE_PIN E4 [get_ports SFP0_TX_P]
#set_property PACKAGE_PIN E3 [get_ports SFP0_TX_N]
set_property PACKAGE_PIN D2 [get_ports SFP0_RX_P]
set_property PACKAGE_PIN D1 [get_ports SFP0_RX_N]

## SFP CONTROL:
##-------------
#set_property PACKAGE_PIN A12 [get_ports SFP0_TX_DISABLE]
#set_property IOSTANDARD LVCMOS18 [get_ports SFP0_TX_DISABLE]

##====================##
## SIGNALS FORWARDING ##
##====================##

## SMA OUTPUT:
##------------
##set_property PACKAGE_PIN H27 [get_ports USER_SMA_GPIO_P]
##set_property IOSTANDARD LVCMOS18 [get_ports USER_SMA_GPIO_P]
##set_property SLEW FAST [get_ports USER_SMA_GPIO_P]

##set_property PACKAGE_PIN G27 [get_ports USER_SMA_GPIO_N]
##set_property IOSTANDARD LVCMOS18 [get_ports USER_SMA_GPIO_N]
##set_property SLEW FAST [get_ports USER_SMA_GPIO_N]


