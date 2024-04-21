module jk_ff(j,k,clk,reset,q,qbar);
input j,k,clk,reset;
output reg q,qbar;
always@(posedge clk)
begin
if(reset)
q<=1'b0;
else
begin
case({j,k})
2'b00: q<=q;
2'b10: q<=1;
2'b01: q<=0;
2'b11: q<=~q;
default: q<=0;
endcase
end
qbar<=~q;
end
endmodule
