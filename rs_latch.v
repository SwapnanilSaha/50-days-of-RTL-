module rs_latch(r,s,q,qbar);
input r,s;
output q,qbar;
assign  q=~r&~qbar;
assign  qbar=~s&~q;
endmodule
