module adder_subtractor(a,b,sel,s,cout);
input [3:0]a,b;
input sel;
output [3:0]s,cout;
wire [3:0]w;
genvar g;
assign w[0]=b[0]^sel;
fa p1(a[0],w[0],sel,s[0],cout[0]);
generate
for(g=1;g<4;g=g+1)
begin
assign w[g]=b[g]^sel;
fa p2(a[g],w[g],cout[g-1],s[g],cout[g]);
end
endgenerate
endmodule
