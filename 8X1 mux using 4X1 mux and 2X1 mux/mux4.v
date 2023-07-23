module mux4(I,s,y);
input [3:0]I;
input [1:0]s;
output y;
wire [1:0]w;
mux a1(I[1:0],s[0],w[0]);
mux a2(I[3:2],s[0],w[1]);
mux a3(w[1:0],s[1],y);
endmodule
