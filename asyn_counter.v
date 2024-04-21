module asyn_counter(clk,reset,q);
input clk,reset;
output [2:0]q;
wire [2:0]qbar;
t_ff t1(1,clk,reset,q[0],qbar[0]);
t_ff t2(1,qbar[0],reset,q[1],qbar[1]);
t_ff t3(1,qbar[1],reset,q[2],qbar[2]);
endmodule
