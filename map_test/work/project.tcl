set projDir "/home/junyu/Desktop/1DFinalHardware/map_test/work/planAhead"
set projName "map_test"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/mojo_top_0.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/reset_conditioner_1.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/map_2.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/display_3.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/player_4.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/player_5.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/projectiles_6.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/projectiles_6.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/obstacles_8.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/customCounter_17.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/digital_lut_18.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/digital_lut_18.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/customCounter_17.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/digital_lut_18.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/digital_lut_18.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/customCounter_17.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/edge_detector_9.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/button_conditioner_13.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/customCounter_17.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v" "/home/junyu/Desktop/1DFinalHardware/map_test/work/verilog/pipeline_51.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "/home/junyu/Desktop/1DFinalHardware/map_test/constraint/display.ucf" "/home/junyu/Desktop/1DFinalHardware/map_test/constraint/button_movements.ucf" "/home/junyu/Desktop/1DFinalHardware/map_test/constraint/custom.ucf" "/opt/mojo-ide-B1.3.6/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1