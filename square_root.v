module square_root(x,q);
input [7:0]x;
output reg [7:0]q;
reg [7:0]t;
integer i;
always@(x)
begin
for(i=0;i<(x/2);i=i+1)
begin
t=i*i;
if(t==x)
q=i;
end
end
endmodule
