module comparator(a,b,g,e,l);
input a,b;
output reg g,e,l;
always@(a,b)
begin
case({a,b})
2'b00,2'b11:
begin 
e=1;
g=0;
l=0;
end
2'b01:
begin
l=1;
e=0;
g=0;
end
2'b10:
begin
g=1;
e=0;
l=0;
end
default:
begin
g=0;
e=0;
l=0;
end
endcase
end
endmodule 
