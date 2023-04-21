set PROJECT_NAME xilinx_template
set FPGA xc7k325tffg900-1
set PROJECT_CONSTRAINT_FILE constraints/${PROJECT_NAME}.xdc
set TIMING_CONSTRAINTS_FILE constraints/timing_constraints.xdc
set TIMING_CONSTRAINTS_PLACEMENT constraints/timing_constraints_placement.xdc
set DIR_LIB src

create_project project project -part ${FPGA} 

add_files -fileset sources_1 ${DIR_LIB}/${PROJECT_NAME}.sv
add_files -fileset sources_1 ${DIR_LIB}/delay_rg.v
add_files -fileset sources_1 ${DIR_LIB}/ip/clk_wiz_0/clk_wiz_0.xci


# switch off messages
# set_msg_config -suppress -id {[DRC DPIP-1]}


add_files -fileset constrs_1 -norecurse ${PROJECT_CONSTRAINT_FILE}

read_xdc ${TIMING_CONSTRAINTS_FILE}

update_compile_order -fileset sources_1
launch_runs synth_1 -jobs 8
wait_on_run synth_1

read_xdc ${TIMING_CONSTRAINTS_PLACEMENT}
launch_runs impl_1 -jobs 8
wait_on_run impl_1

launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
open_run impl_1
report_timing_summary -slack_lesser_than 0 -file project/report_time_summary.rpt
report_timing -slack_lesser_than 0 -file project/report_time_violations.rpt
report_clocks -file project/report_clock.rpt
report_utilization -hierarchical -hierarchical_percentages -file project/report_utilization.rpt

file copy -force project/project.runs/impl_1/${PROJECT_NAME}.bit firmware/${PROJECT_NAME}.bit

