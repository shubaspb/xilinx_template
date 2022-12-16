set PROJECT_NAME xilinx_template
set FPGA xc7k325tffg900-1
set PROJECT_CONSTRAINT_FILE constraints/${PROJECT_NAME}.xdc
set DIR_LIB src

create_project project project -part ${FPGA} 

add_files -fileset sources_1 ${DIR_LIB}/${PROJECT_NAME}.sv
add_files -fileset sources_1 ${DIR_LIB}/delay_rg.v
add_files -fileset sources_1 ${DIR_LIB}/ip/clk_wiz_0/clk_wiz_0.xci

add_files -fileset constrs_1 -norecurse ${PROJECT_CONSTRAINT_FILE}

#create_fileset -constrset ${PROJECT_CONSTRAINT_FILE}
#set_property target_constrs_file ${PROJECT_CONSTRAINT_FILE} [current_fileset -constrset]

update_compile_order -fileset sources_1
#synth_design -part ${FPGA} -top xilinx_template -constrset constrs_1
launch_runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
open_run impl_1
report_timing -slack_lesser_than 0 -file project/report_time_violations.rpt
report_clocks -file project/report_clock.rpt
report_utilization -name utilization_1 -file project/report_utilization.rpt
report_power_opt -file project/report_power_opt.rpt

file copy -force project/project.runs/impl_1/${PROJECT_NAME}.bit firmware/${PROJECT_NAME}.bit

