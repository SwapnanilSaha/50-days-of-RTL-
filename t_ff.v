module t_ff(t,clk,reset,q,qbar);
input t,clk,reset;
output q,qbar;
wire w,q1;
d_ff d1(w,clk,reset,q1,qbar);
assign w=t^q1;
assign q=q1;
endmodule
