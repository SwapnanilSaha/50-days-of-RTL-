module bit3_comp(a,b,g,e,l);
input [2:0]a,b;
output reg g,e,l;
wire [2:0]g1,e1,l1;
comparator c1(a[2],b[2],g1[2],e1[2],l1[2]);
comparator c2(a[1],b[1],g1[1],e1[1],l1[1]);
comparator c3(a[0],b[0],g1[0],e1[0],l1[0]);
always@(g1,e1,l1)
begin
 g=g1[2]|e1[2]&g1[1]|e1[2]&e1[1]&g1[0];
 e=e1[2]&e1[1]&e1[0];
l=l1[2]|e1[2]&l1[1]|e1[2]&e1[1]&l1[0];
end
endmodule
