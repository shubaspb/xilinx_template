
create_clock -period 6.250 -name data_clk -waveform {0.000 3.125} [get_pins IBUFGDS_inst0/O]
create_clock -period 40 -name f25_clk -waveform {0.000 20} [get_pins clk_wiz_0_inst0/clk_in1]
set_clock_groups -name clock_sdr -asynchronous -group [get_clocks [list data_clk]]
set_clock_groups -name clock_fuxy -asynchronous -group [get_clocks [list f25_clk]]






