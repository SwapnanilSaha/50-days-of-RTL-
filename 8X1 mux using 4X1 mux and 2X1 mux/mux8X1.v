module mux8X1(I,s,y);
input [7:0]I;
input [2:0]s;
output y;
wire [1:0]w;
mux4 m1(I[3:0],s[1:0],w[0]);
mux4 m2(I[7:4],s[1:0],w[1]);
mux  m3(w[1:0],s[2],y);
endmodule
