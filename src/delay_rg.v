// Copyright (c) 2014, Dmitry Shubin
// delay line based on register

module delay_rg
   #(parameter W = 16,
     parameter D = 10) // D<=2^16
   (input               reset_b,
    input               clk,
    input       [W-1:0] din,
    output reg  [W-1:0] dout);

reg [W-1:0] rg [0:D-2];
always @ (posedge clk) begin : delay_line
integer i;
    rg[0] <= din;
    for(i=0; i<(D-2); i=i+1)
        rg[i+1] <= rg[i];
end

reg [15:0] cnt_reset;
always @ (posedge clk, negedge reset_b)
    if (!reset_b)
        cnt_reset <= 16'd0;
    else
        cnt_reset <= cnt_reset + ~&cnt_reset;

reg reset_del_b;
always @(posedge clk, negedge reset_b)
    if (!reset_b)
        reset_del_b <= 1'b0;
    else
        reset_del_b <= (cnt_reset > (D-2));

always @ (posedge clk, negedge reset_del_b)
    if (!reset_del_b)
        dout <= {(W){1'b0}};
    else
        dout <= rg[D-2];

endmodule