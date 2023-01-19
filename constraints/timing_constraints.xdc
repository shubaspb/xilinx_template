
create_clock -period 2 -name data_clk -waveform {0.000 1.000} [get_pins clk_wiz_0_inst0/clk_in1]
set_clock_groups -asynchronous -group [get_clocks data_clk] -group [get_clocks f25clk]






