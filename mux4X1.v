module mux4X1(a,b,c,d,s,out);
input a,b,c,d;
input [1:0]s;
output out;
assign out=(~s[0]&~s[1]&a)+(~s[1]&s[0]&b)+(s[1]&~s[0]&c)+(s[1]&s[0]&d);
endmodule
