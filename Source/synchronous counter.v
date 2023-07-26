module Sync_counter (
input clk, reset_n,
output [3:0] Q
);
wire w0, w1, w2;
 
        T_FF U0 (
        .T(1'b1),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[0])
        );
         
 assign w0 = 1'b1 & Q[0];      
           
        T_FF U1 (
        .T(w0),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[1])
        ); 
        
 assign w1 = w0 & Q[1];        
          
         T_FF U2 (
        .T(w1),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[2])
        );   
        
 assign w2 = w1 & Q[2];       
        
         T_FF U3 (
        .T(w2),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q[3])
        );   
endmodule
