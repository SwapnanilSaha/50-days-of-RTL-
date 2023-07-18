module mux6X1(I,s,y);
input [5:0]I;
input [2:0]s;
output y;
wire [3:0]w;
mux2X1 a1(I[1:0],s[0],w[0]);
mux2X1 a2(I[3:2],s[0],w[1]);
mux2X1 a3(I[5:4],s[0],w[3]);
mux2X1 a4(w[1:0],s[1],w[2]);
mux2X1 a5(w[3:2],s[2],y);
endmodule
