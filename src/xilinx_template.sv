
module xilinx_template(

    input           f25clk,
    // RX port
    input           data_clk_p,
    input           data_clk_n,
    input           rx_frame_p,
    input           rx_frame_n,
    input   [5:0]   rx_d_p,
    input   [5:0]   rx_d_n,
    // TX port
    output          fb_clk_p,
    output          fb_clk_n,
    output          tx_frame_p,
    output          tx_frame_n,
    output  [5:0]   tx_d_p,
    output  [5:0]   tx_d_n
    );

////////////////////// LVDS buffers ///////////////////////////////////////////////////////////////////////
wire data_clk;
wire rx_frame;
wire [5:0] rx_d;
IBUFGDS IBUFGDS_inst0 (.O(data_clk),.I(data_clk_p),.IB(data_clk_n));
IBUFGDS IBUFDS_inst1 (.O(rx_frame),.I(rx_frame_p),.IB(rx_frame_n));
IBUFDS IBUFDS_inst2 (.O(rx_d[0]),.I(rx_d_p[0]),.IB(rx_d_n[0]));
IBUFDS IBUFDS_inst3 (.O(rx_d[1]),.I(rx_d_p[1]),.IB(rx_d_n[1]));
IBUFDS IBUFDS_inst4 (.O(rx_d[2]),.I(rx_d_p[2]),.IB(rx_d_n[2]));
IBUFDS IBUFDS_inst5 (.O(rx_d[3]),.I(rx_d_p[3]),.IB(rx_d_n[3]));
IBUFDS IBUFDS_inst6 (.O(rx_d[4]),.I(rx_d_p[4]),.IB(rx_d_n[4]));
IBUFDS IBUFDS_inst7 (.O(rx_d[5]),.I(rx_d_p[5]),.IB(rx_d_n[5]));

wire fb_clk;
assign fb_clk = f25clk;
wire tx_frame;
wire [5:0] tx_d;
OBUFDS OBUFDS_inst0 (.I(fb_clk),.O(fb_clk_p),.OB(fb_clk_n));
OBUFDS OBUFDS_inst1 (.I(tx_frame),.O(tx_frame_p),.OB(tx_frame_n));
OBUFDS OBUFDS_inst2 (.I(tx_d[0]),.O(tx_d_p[0]),.OB(tx_d_n[0]));
OBUFDS OBUFDS_inst3 (.I(tx_d[1]),.O(tx_d_p[1]),.OB(tx_d_n[1]));
OBUFDS OBUFDS_inst4 (.I(tx_d[2]),.O(tx_d_p[2]),.OB(tx_d_n[2]));
OBUFDS OBUFDS_inst5 (.I(tx_d[3]),.O(tx_d_p[3]),.OB(tx_d_n[3]));
OBUFDS OBUFDS_inst6 (.I(tx_d[4]),.O(tx_d_p[4]),.OB(tx_d_n[4]));
OBUFDS OBUFDS_inst7 (.I(tx_d[5]),.O(tx_d_p[5]),.OB(tx_d_n[5]));
///////////////////////////////////////////////////////////////////////////////////////////////////////////

assign tx_frame = rx_frame;
wire clk;
wire locked;

clk_wiz_0 clk_wiz_0_inst0(
    .clk_in1    (data_clk),
    .clk_out1   (clk),
    .locked     (locked));



wire [5:0] rx_d_int;
assign rx_d_int = rx_d + {rx_d[2:0],rx_d[5:3]};

delay_rg #(.W(6),.D(100)) delay_rg_inst0
   (.reset_b(locked),
    .clk    (clk),
    .din    (rx_d_int),
    .dout   (tx_d));




endmodule
