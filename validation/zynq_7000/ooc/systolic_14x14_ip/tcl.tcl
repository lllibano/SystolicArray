#Define designName, targetPart, and outputDir
set designName systolic_14x14_ip
set targetPart xc7z020clg400-3
set outputDir ./rundir
#Create and/or clean outputDir
file mkdir $outputDir
set files [glob -nocomplain "$outputDir/*"]
if {[llength $files] != 0} {
    # clear folder contents
    puts "deleting contents of $outputDir"
    file delete -force {*}[glob -directory $outputDir *]; 
} else {
    puts "$outputDir is empty"
}

#Read source files (hdl, bd, xdc)
read_verilog -sv [ glob ./$designName/$designName.srcs/sources_1/imports/import_me/*.sv ]
read_bd [ glob ./$designName/$designName.srcs/sources_1/bd/import_me/*.bd ]
read_xdc ./$designName/$designName.srcs/constrs_1/new/xdc.xdc

#Synth
synth_design -mode out_of_context -top top -part $targetPart
#write_checkpoint -force $outputDir/post_synth.dcp
report_utilization -file $outputDir/post_synth_util.rpt
report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
#Opt
opt_design
#Place
place_design
#write_checkpoint -force $outputDir/post_place.dcp
report_utilization -file $outputDir/post_place_util.rpt
report_clock_utilization -file $outputDir/post_place_clock_util.rpt
report_timing_summary -file $outputDir/post_place_timing_summary.rpt
#Route
route_design -directive Explore
#write_checkpoint -force $outputDir/post_route.dcp
report_utilization -file $outputDir/post_route_util.rpt
report_timing_summary -file $outputDir/post_route_timing_summary.rpt
report_power -file $outputDir/post_route_power.rpt
report_route_status -file $outputDir/post_route_status.rpt
report_drc -file $outputDir/post_route_drc.rpt
