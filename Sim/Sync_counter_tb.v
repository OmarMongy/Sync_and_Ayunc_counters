module Sync_counter_tb();
reg clk , reset_n;
wire [3:0] Q;

Sync_counter uut(
    .clk(clk),
    .reset_n(reset_n),
    .Q(Q)
);


localparam T = 20;
always
begin
    clk = 1'b0;
    #(T/2)
    clk = 1'b1;
    #(T/2);
end

initial
begin

reset_n = 1'b0;
#T
reset_n = 1'b1;
#T

#(20*T)
$stop;
end
endmodule
