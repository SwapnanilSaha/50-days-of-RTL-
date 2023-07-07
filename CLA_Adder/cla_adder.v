module cla_adder(a,b,cin,s,cout);
input [3:0] a,b;
input cin;
output  [3:0] s;
output  cout;
wire [3:0]c;
genvar i;
generate
for(i=0;i<=3;i=i+1)
begin
if(i==0)
begin
assign s[i]=a[i]^b[i]^cin;
assign c[i]=a[i]&b[i]|cin;
end
else
begin
assign s[i]=a[i]^b[i]^c[i-1];
assign c[i]=(a[i]&b[i])|(c[i-1]&(a[i]^b[i]));
end
end
assign cout=c[3];
endgenerate
endmodule
