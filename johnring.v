module johnring(clk,reset,preset,q,qbar,s);
input clk,reset,preset,s;
output reg [5:0]q;
output [5:0]qbar;
always@(posedge clk)
begin
if(reset)
q<=0;
else if(preset)
q[0]<=1'b1;
else
begin
if(s==0)
begin
q[1]<=q[0];
q[2]<=q[1];
q[3]<=q[2];
q[4]<=q[3];
q[5]<=q[4];
q[0]<=q[5];
end
else
begin
q[1]<=q[0];
q[2]<=q[1];
q[3]<=q[2];
q[4]<=q[3];
q[5]<=q[4];
q[0]<=qbar[5];
end
end
end
assign qbar=~q;
endmodule
