module T_FF(
input T,
input clk, reset_n,
output Q
);
localparam C2Q_delay = 2; //for simu
reg Q_reg;
wire Q_next;

always @(posedge clk, negedge reset_n)
begin
    if(!reset_n)
    Q_reg <= 1'b0;
    else
    # C2Q_delay Q_reg <= Q_next;
end

assign Q_next = T? ~Q_reg:Q_reg;
assign Q = Q_reg;
endmodule
