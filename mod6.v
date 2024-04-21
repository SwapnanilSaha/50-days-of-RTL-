module mod6(clk,reset,q,qbar);
input clk,reset;
output reg [2:0]q;
output [2:0]qbar;
always@(posedge clk)
begin
if(reset)
q<=0;
else
begin
if(q==3'b101)
q<=0;
else
q<=q+1;
end
end
assign qbar=~q;
endmodule

