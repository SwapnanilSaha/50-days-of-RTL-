module bit3_comp_tb;
reg [2:0]a,b;
wire g,e,l;
integer i;
bit3_comp s1(a,b,g,e,l);
initial
begin
for(i=0;i<=63;i=i+1)
begin
{a,b}=i;
#5;
end
end
endmodule
