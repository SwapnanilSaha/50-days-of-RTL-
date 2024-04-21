module tristate_mux(I,s,out);
input [3:0]I;
input [1:0]s;
output out;
wire [7:0]w;
bufif0 a1(w[0],s[1],I[0]);
bufif0 a2(w[1],s[1],I[1]);
bufif1 a3(w[2],s[1],I[2]);
bufif1 a4(w[3],s[1],I[3]);
bufif0 a5(out,s[0],w[0]);
bufif1 a6(out,s[0],w[1]);
bufif0 a7(out,s[0],w[2]);
bufif1 a8(out,s[0],w[3]);
wor out;
endmodule
