set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 40 [current_design]
#set_property PARAM.FREQUENCY 250000 [get_hw_targets */xilinx_tcf/Digilent/210203327962A] 
#open_hw_target

set_property -dict {PACKAGE_PIN AB27 IOSTANDARD LVDS_25 DIFF_TERM TRUE} [get_ports data_clk_p]
set_property -dict {PACKAGE_PIN AC27 IOSTANDARD LVDS_25} [get_ports data_clk_n]
set_property -dict {PACKAGE_PIN AG29 IOSTANDARD LVDS_25 DIFF_TERM TRUE} [get_ports rx_frame_p]
set_property -dict {PACKAGE_PIN AH29 IOSTANDARD LVDS_25} [get_ports rx_frame_n]
set_property -dict {PACKAGE_PIN AC29 IOSTANDARD LVDS_25 DIFF_TERM TRUE} [get_ports rx_d_p[5]]
set_property -dict {PACKAGE_PIN AC30 IOSTANDARD LVDS_25} [get_ports rx_d_n[5]]
set_property -dict {PACKAGE_PIN AC26 IOSTANDARD LVDS_25 DIFF_TERM TRUE} [get_ports rx_d_p[4]]
set_property -dict {PACKAGE_PIN AD26 IOSTANDARD LVDS_25} [get_ports rx_d_n[4]]
set_property -dict {PACKAGE_PIN AD27 IOSTANDARD LVDS_25 DIFF_TERM TRUE} [get_ports rx_d_p[3]]
set_property -dict {PACKAGE_PIN AD28 IOSTANDARD LVDS_25} [get_ports rx_d_n[3]]
set_property -dict {PACKAGE_PIN AF26 IOSTANDARD LVDS_25 DIFF_TERM TRUE} [get_ports rx_d_p[2]]
set_property -dict {PACKAGE_PIN AF27 IOSTANDARD LVDS_25} [get_ports rx_d_n[2]]
set_property -dict {PACKAGE_PIN AG27 IOSTANDARD LVDS_25 DIFF_TERM TRUE} [get_ports rx_d_p[1]]
set_property -dict {PACKAGE_PIN AG28 IOSTANDARD LVDS_25} [get_ports rx_d_n[1]]
set_property -dict {PACKAGE_PIN AH26 IOSTANDARD LVDS_25 DIFF_TERM TRUE} [get_ports rx_d_p[0]]
set_property -dict {PACKAGE_PIN AH27 IOSTANDARD LVDS_25} [get_ports rx_d_n[0]]

set_property -dict {PACKAGE_PIN L25  IOSTANDARD LVDS_25} [get_ports fb_clk_p]
set_property -dict {PACKAGE_PIN K25  IOSTANDARD LVDS_25} [get_ports fb_clk_n]
set_property -dict {PACKAGE_PIN K28  IOSTANDARD LVDS_25} [get_ports tx_frame_p]
set_property -dict {PACKAGE_PIN K29  IOSTANDARD LVDS_25} [get_ports tx_frame_n]
set_property -dict {PACKAGE_PIN AG30 IOSTANDARD LVDS_25} [get_ports tx_d_p[5]]
set_property -dict {PACKAGE_PIN AH30 IOSTANDARD LVDS_25} [get_ports tx_d_n[5]]
set_property -dict {PACKAGE_PIN AE28 IOSTANDARD LVDS_25} [get_ports tx_d_p[4]]
set_property -dict {PACKAGE_PIN AF28 IOSTANDARD LVDS_25} [get_ports tx_d_n[4]]
set_property -dict {PACKAGE_PIN AE30 IOSTANDARD LVDS_25} [get_ports tx_d_p[3]]
set_property -dict {PACKAGE_PIN AF30 IOSTANDARD LVDS_25} [get_ports tx_d_n[3]]
set_property -dict {PACKAGE_PIN AD29 IOSTANDARD LVDS_25} [get_ports tx_d_p[2]]
set_property -dict {PACKAGE_PIN AE29 IOSTANDARD LVDS_25} [get_ports tx_d_n[2]]
set_property -dict {PACKAGE_PIN AB29 IOSTANDARD LVDS_25} [get_ports tx_d_p[1]]
set_property -dict {PACKAGE_PIN AB30 IOSTANDARD LVDS_25} [get_ports tx_d_n[1]]
set_property -dict {PACKAGE_PIN Y30  IOSTANDARD LVDS_25} [get_ports tx_d_p[0]]
set_property -dict {PACKAGE_PIN AA30 IOSTANDARD LVDS_25} [get_ports tx_d_n[0]]


create_clock -period 5 -name data_clk -waveform {0.000 2.500} [get_pins IBUFGDS_inst0/O]
set_clock_groups -name data_clk -asynchronous -group [get_clocks [list data_clk]






