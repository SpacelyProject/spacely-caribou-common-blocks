# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BUFFER_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLK_DIVIDER" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CONFIG_REG_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.BUFFER_DEPTH { PARAM_VALUE.BUFFER_DEPTH } {
	# Procedure called to update BUFFER_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BUFFER_DEPTH { PARAM_VALUE.BUFFER_DEPTH } {
	# Procedure called to validate BUFFER_DEPTH
	return true
}

proc update_PARAM_VALUE.CLK_DIVIDER { PARAM_VALUE.CLK_DIVIDER } {
	# Procedure called to update CLK_DIVIDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLK_DIVIDER { PARAM_VALUE.CLK_DIVIDER } {
	# Procedure called to validate CLK_DIVIDER
	return true
}

proc update_PARAM_VALUE.CONFIG_REG_WIDTH { PARAM_VALUE.CONFIG_REG_WIDTH } {
	# Procedure called to update CONFIG_REG_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CONFIG_REG_WIDTH { PARAM_VALUE.CONFIG_REG_WIDTH } {
	# Procedure called to validate CONFIG_REG_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.CONFIG_REG_WIDTH { MODELPARAM_VALUE.CONFIG_REG_WIDTH PARAM_VALUE.CONFIG_REG_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CONFIG_REG_WIDTH}] ${MODELPARAM_VALUE.CONFIG_REG_WIDTH}
}

proc update_MODELPARAM_VALUE.CLK_DIVIDER { MODELPARAM_VALUE.CLK_DIVIDER PARAM_VALUE.CLK_DIVIDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLK_DIVIDER}] ${MODELPARAM_VALUE.CLK_DIVIDER}
}

proc update_MODELPARAM_VALUE.BUFFER_DEPTH { MODELPARAM_VALUE.BUFFER_DEPTH PARAM_VALUE.BUFFER_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BUFFER_DEPTH}] ${MODELPARAM_VALUE.BUFFER_DEPTH}
}

