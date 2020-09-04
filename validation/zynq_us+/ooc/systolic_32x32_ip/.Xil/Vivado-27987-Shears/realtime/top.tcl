# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-27987-Shears/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xczu9eg-ffvb1156-3-e-es2

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv {
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/int8_quad_mac.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/top.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/fsm.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/mem.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/dff_enbl.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/int8_pe.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/dsp_macro_wrapper.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/array.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/mul.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/dff.sv
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/imports/import_me/add.sv
    }
      rt::read_verilog {
      ./.Xil/Vivado-27987-Shears/realtime/dsp_macro_xbip_dsp48_macro_0_0_stub.v
      /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/bd/import_me/synth/dsp_macro.v
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList ./.Xil/Vivado-27987-Shears/realtime/top_synth.xdc
    rt::sdcChecksum
    set rt::top top
    rt::set_parameter enableIncremental true
    set rt::ioInsertion false
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: out_of_context
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-27987-Shears/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
