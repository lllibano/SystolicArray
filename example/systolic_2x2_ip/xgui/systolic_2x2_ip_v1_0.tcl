# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "addressWidth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "arraySize" -parent ${Page_0}
  ipgui::add_param $IPINST -name "inputBits" -parent ${Page_0}
  ipgui::add_param $IPINST -name "m_axi_tdata_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "m_axi_tkeep_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "outputBits" -parent ${Page_0}
  ipgui::add_param $IPINST -name "s_axi_tdata_width" -parent ${Page_0}
  ipgui::add_param $IPINST -name "s_axi_tkeep_width" -parent ${Page_0}


}

proc update_PARAM_VALUE.addressWidth { PARAM_VALUE.addressWidth } {
	# Procedure called to update addressWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.addressWidth { PARAM_VALUE.addressWidth } {
	# Procedure called to validate addressWidth
	return true
}

proc update_PARAM_VALUE.arraySize { PARAM_VALUE.arraySize } {
	# Procedure called to update arraySize when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.arraySize { PARAM_VALUE.arraySize } {
	# Procedure called to validate arraySize
	return true
}

proc update_PARAM_VALUE.inputBits { PARAM_VALUE.inputBits } {
	# Procedure called to update inputBits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.inputBits { PARAM_VALUE.inputBits } {
	# Procedure called to validate inputBits
	return true
}

proc update_PARAM_VALUE.m_axi_tdata_width { PARAM_VALUE.m_axi_tdata_width } {
	# Procedure called to update m_axi_tdata_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.m_axi_tdata_width { PARAM_VALUE.m_axi_tdata_width } {
	# Procedure called to validate m_axi_tdata_width
	return true
}

proc update_PARAM_VALUE.m_axi_tkeep_width { PARAM_VALUE.m_axi_tkeep_width } {
	# Procedure called to update m_axi_tkeep_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.m_axi_tkeep_width { PARAM_VALUE.m_axi_tkeep_width } {
	# Procedure called to validate m_axi_tkeep_width
	return true
}

proc update_PARAM_VALUE.outputBits { PARAM_VALUE.outputBits } {
	# Procedure called to update outputBits when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.outputBits { PARAM_VALUE.outputBits } {
	# Procedure called to validate outputBits
	return true
}

proc update_PARAM_VALUE.s_axi_tdata_width { PARAM_VALUE.s_axi_tdata_width } {
	# Procedure called to update s_axi_tdata_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.s_axi_tdata_width { PARAM_VALUE.s_axi_tdata_width } {
	# Procedure called to validate s_axi_tdata_width
	return true
}

proc update_PARAM_VALUE.s_axi_tkeep_width { PARAM_VALUE.s_axi_tkeep_width } {
	# Procedure called to update s_axi_tkeep_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.s_axi_tkeep_width { PARAM_VALUE.s_axi_tkeep_width } {
	# Procedure called to validate s_axi_tkeep_width
	return true
}


proc update_MODELPARAM_VALUE.arraySize { MODELPARAM_VALUE.arraySize PARAM_VALUE.arraySize } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.arraySize}] ${MODELPARAM_VALUE.arraySize}
}

proc update_MODELPARAM_VALUE.inputBits { MODELPARAM_VALUE.inputBits PARAM_VALUE.inputBits } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.inputBits}] ${MODELPARAM_VALUE.inputBits}
}

proc update_MODELPARAM_VALUE.outputBits { MODELPARAM_VALUE.outputBits PARAM_VALUE.outputBits } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.outputBits}] ${MODELPARAM_VALUE.outputBits}
}

proc update_MODELPARAM_VALUE.addressWidth { MODELPARAM_VALUE.addressWidth PARAM_VALUE.addressWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.addressWidth}] ${MODELPARAM_VALUE.addressWidth}
}

proc update_MODELPARAM_VALUE.s_axi_tdata_width { MODELPARAM_VALUE.s_axi_tdata_width PARAM_VALUE.s_axi_tdata_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.s_axi_tdata_width}] ${MODELPARAM_VALUE.s_axi_tdata_width}
}

proc update_MODELPARAM_VALUE.s_axi_tkeep_width { MODELPARAM_VALUE.s_axi_tkeep_width PARAM_VALUE.s_axi_tkeep_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.s_axi_tkeep_width}] ${MODELPARAM_VALUE.s_axi_tkeep_width}
}

proc update_MODELPARAM_VALUE.m_axi_tdata_width { MODELPARAM_VALUE.m_axi_tdata_width PARAM_VALUE.m_axi_tdata_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.m_axi_tdata_width}] ${MODELPARAM_VALUE.m_axi_tdata_width}
}

proc update_MODELPARAM_VALUE.m_axi_tkeep_width { MODELPARAM_VALUE.m_axi_tkeep_width PARAM_VALUE.m_axi_tkeep_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.m_axi_tkeep_width}] ${MODELPARAM_VALUE.m_axi_tkeep_width}
}

