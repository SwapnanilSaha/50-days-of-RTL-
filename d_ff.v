module d_ff(d,clk,reset,q,qbar);
input d,clk,reset;
output reg q,qbar;
always@(posedge clk)
begin
if(reset)
q<=1'b0;
else
q<=d;
end
assign qbar=!q;
endmodule
