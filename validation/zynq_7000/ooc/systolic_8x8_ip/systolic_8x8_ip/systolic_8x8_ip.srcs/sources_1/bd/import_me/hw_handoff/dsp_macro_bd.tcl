
################################################################
# This is a generated script based on design: dsp_macro
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source dsp_macro_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-3
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name dsp_macro

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set A [ create_bd_port -dir I -from 24 -to 0 -type data A ]
  set B [ create_bd_port -dir I -from 24 -to 0 -type data B ]
  set C [ create_bd_port -dir I -from 17 -to 0 -type data C ]
  set CLK [ create_bd_port -dir I -type clk CLK ]
  set CLR [ create_bd_port -dir I -type rst CLR ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $CLR
  set Z [ create_bd_port -dir O -from 42 -to 0 -type data Z ]

  # Create instance: xbip_dsp48_macro_0, and set properties
  set xbip_dsp48_macro_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xbip_dsp48_macro:3.0 xbip_dsp48_macro_0 ]
  set_property -dict [ list \
   CONFIG.a_binarywidth {0} \
   CONFIG.a_width {25} \
   CONFIG.areg_3 {true} \
   CONFIG.areg_4 {true} \
   CONFIG.b_binarywidth {0} \
   CONFIG.b_width {18} \
   CONFIG.breg_3 {true} \
   CONFIG.breg_4 {true} \
   CONFIG.c_binarywidth {0} \
   CONFIG.concat_binarywidth {0} \
   CONFIG.concat_width {48} \
   CONFIG.creg_3 {false} \
   CONFIG.creg_4 {false} \
   CONFIG.creg_5 {false} \
   CONFIG.d_binarywidth {0} \
   CONFIG.d_width {25} \
   CONFIG.dreg_3 {true} \
   CONFIG.has_sclr {true} \
   CONFIG.instruction1 {B*(D+A)} \
   CONFIG.mreg_5 {true} \
   CONFIG.p_binarywidth {0} \
   CONFIG.p_full_width {43} \
   CONFIG.p_width {43} \
   CONFIG.pcin_binarywidth {0} \
   CONFIG.preg_6 {true} \
 ] $xbip_dsp48_macro_0

  # Create port connections
  connect_bd_net -net A_0_1 [get_bd_ports A] [get_bd_pins xbip_dsp48_macro_0/A]
  connect_bd_net -net B_0_1 [get_bd_ports C] [get_bd_pins xbip_dsp48_macro_0/B]
  connect_bd_net -net CLK_0_1 [get_bd_ports CLK] [get_bd_pins xbip_dsp48_macro_0/CLK]
  connect_bd_net -net D_0_1 [get_bd_ports B] [get_bd_pins xbip_dsp48_macro_0/D]
  connect_bd_net -net SCLR_0_1 [get_bd_ports CLR] [get_bd_pins xbip_dsp48_macro_0/SCLR]
  connect_bd_net -net xbip_dsp48_macro_0_P [get_bd_ports Z] [get_bd_pins xbip_dsp48_macro_0/P]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


