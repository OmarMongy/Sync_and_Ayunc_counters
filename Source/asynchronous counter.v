module Async_counter(
input clk, reset_n,
output [3:0] Q
    );
    
        T_FF U1 (
        .T(1'b1),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[0])    
    );
        T_FF U2 (
        .T(1'b1),
        .clk(~Q[0]),
        .reset_n(reset_n),
        .Q(Q[1])    
    );
        T_FF U3 (
        .T(1'b1),
        .clk(~Q[1]),
        .reset_n(reset_n),
        .Q(Q[2])    
    );
        T_FF U4 (
        .T(1'b1),
        .clk(~Q[2]),
        .reset_n(reset_n),
        .Q(Q[3])    
    );
endmodule
