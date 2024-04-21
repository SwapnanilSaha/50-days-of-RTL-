module johnring_six(clk,reset,preset,q,qbar);
input clk,reset,preset;
output [5:0]q;
output [5:0]qbar;
wire [2:0]w1,w2;
wire s;
mod6 m1(clk,reset,w1,w2);
assign s=(~w1[2]&&w1[1]&&w1[0])||(w1[2]&&~w1[1]&&~w1[0])||(w1[2]&&~w1[1]&&w1[0]);
johnring j1(clk,reset,preset,q,qbar,s);
endmodule
