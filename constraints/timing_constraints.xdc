
create_clock -period 1 -name data_clk -waveform {0.000 0.500} [get_pins IBUFGDS_inst0/O]
set_clock_groups -name data_clk -asynchronous -group [get_clocks [list data_clk]






