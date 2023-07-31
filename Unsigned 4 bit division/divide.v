module divide(a,b,div,rem,error);
input [3:0]a,b;
output reg [3:0]div,rem;
output reg error;
reg [3:0]a1;
integer i;
always@(a or b)
begin
a1=a;
div=0;
rem=0;
if(b==0)
begin
rem<=4'bzzzz;
div<=4'bzzzz;
error<=1;
end
else
begin
error<=0;
for(i=0;i<4;i=i+1)
begin
{rem,a1}={rem,a1}<<1;
div=div<<1;
if(rem>=b)
begin
div[0]=1;
rem=rem-b;
end
else
div=div;
end
end
end
endmodule
