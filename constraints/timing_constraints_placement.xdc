
create_clock -period 6.250 -name clk_tx_virt -waveform {0.000 3.125}
create_clock -period 6.250 -name clk_rx_virt -waveform {0.000 3.125}

set oddr_max_delay -3.8
set oddr_max_delay_fall -3.9
set oddr_min_delay -4.1
set oddr_min_delay_fall -4.0

set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay [get_ports {tx_frame_p}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay_fall [get_ports {tx_frame_p}] -clock_fall -add_delay
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay [get_ports {tx_frame_p}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay_fall [get_ports {tx_frame_p}] -clock_fall -add_delay

set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay [get_ports {tx_d_p[0]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay_fall [get_ports {tx_d_p[0]}] -clock_fall -add_delay
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay [get_ports {tx_d_p[0]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay_fall [get_ports {tx_d_p[0]}] -clock_fall -add_delay

set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay [get_ports {tx_d_p[1]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay_fall [get_ports {tx_d_p[1]}] -clock_fall -add_delay
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay [get_ports {tx_d_p[1]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay_fall [get_ports {tx_d_p[1]}] -clock_fall -add_delay

set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay [get_ports {tx_d_p[2]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay_fall [get_ports {tx_d_p[2]}] -clock_fall -add_delay
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay [get_ports {tx_d_p[2]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay_fall [get_ports {tx_d_p[2]}] -clock_fall -add_delay

set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay [get_ports {tx_d_p[3]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay_fall [get_ports {tx_d_p[3]}] -clock_fall -add_delay
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay [get_ports {tx_d_p[3]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay_fall [get_ports {tx_d_p[3]}] -clock_fall -add_delay

set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay [get_ports {tx_d_p[4]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay_fall [get_ports {tx_d_p[4]}] -clock_fall -add_delay
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay [get_ports {tx_d_p[4]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay_fall [get_ports {tx_d_p[4]}] -clock_fall -add_delay

set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay [get_ports {tx_d_p[5]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -max $oddr_max_delay_fall [get_ports {tx_d_p[5]}] -clock_fall -add_delay
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay [get_ports {tx_d_p[5]}]
set_output_delay -clock [get_clocks {clk_tx_virt}] -min $oddr_min_delay_fall [get_ports {tx_d_p[5]}] -clock_fall -add_delay



set iddr_max_delay 4.3
set iddr_min_delay 4.2
# 
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_frame_p}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_frame_p}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_frame_p}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_frame_p}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[5]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[5]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[5]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[5]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[4]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[4]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[4]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[4]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[3]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[3]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[3]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[3]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[2]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[2]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[2]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[2]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[1]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[1]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[1]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[1]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[0]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -max $iddr_max_delay [get_ports {rx_d_p[0]}] -clock_fall -add_delay
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[0]}]
set_input_delay -clock [get_clocks {clk_rx_virt}] -min $iddr_min_delay [get_ports {rx_d_p[0]}] -clock_fall -add_delay