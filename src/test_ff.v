
module test_ff
   (input      clk,
    input      reset_b,
    output reg out_neg);

reg out_pos;
always @(posedge clk, posedge reset_b)
    if (!reset_b)
        out_pos <= 1'b0;
    else
        out_pos <= 1'b1;

always @(posedge clk, negedge reset_b)
    if (!reset_b)
        out_neg <= 1'b0;
    else
        out_neg <= out_pos;


endmodule
