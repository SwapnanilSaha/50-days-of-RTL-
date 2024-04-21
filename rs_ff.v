module rs_ff(r,s,clk,q,qbar);
input r,s,clk;
output q,qbar;
wire w1,w2;
always@(clk)
begin
if(clk==1)
rs_latch(r,s,w1,w2);
else
rs_latch(w1,w2,q,qbar);
end
endmodule
