module shift(d,s,clk,reset,q,qbar);
input [3:0]d;
input [1:0]s;
input clk,reset;
output [3:0]q,qbar;
wire [3:0]w;
mux4X1 a0(d[0],0,q[1],q[0],s,w[0]);
d_ff d0(w[0],clk,reset,q[0],qbar[0]);
mux4X1 a1(d[1],q[0],q[2],q[1],s,w[1]);
d_ff d1(w[1],clk,reset,q[1],qbar[1]);
mux4X1 a2(d[2],q[1],q[3],q[2],s,w[2]);
d_ff d2(w[2],clk,reset,q[2],qbar[2]);
mux4X1 a3(d[3],q[2],0,q[3],s,w[3]);
d_ff d3(w[3],clk,reset,q[3],qbar[3]);
assign qbar=~q;
endmodule
